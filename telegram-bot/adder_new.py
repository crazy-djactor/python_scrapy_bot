#!/usr/bin/python3

from settings import USERS
from telethon import TelegramClient
from telethon.tl.types import ChannelParticipantsSearch, PeerChannel, InputUser, User, Chat, InputChannel
from telethon.tl.functions.channels import GetParticipantsRequest, InviteToChannelRequest, JoinChannelRequest
from telethon.tl.functions.messages import ImportChatInviteRequest
import os
import csv
import time
import sys
import json


def telegram_connect(user):
    tclient = TelegramClient('sessions/' + user['phone'], user['api_id'], user['api_hash'])
    tclient.connect()

    if not tclient.is_user_authorized():
        try:
            print('Generating code for ' +'('+ user['phone'] +'), please wait...')
            tclient.send_code_request(user['phone'])
            tclient.sign_in(user['phone'], input('Enter the code: '))

            while not tclient.is_user_authorized():
                print('Bad passcode. Press "s" to skip this user.')
                code = input('Enter the code: ')

                if code == 's':
                    print('Skipping authorization of user ' + user['phone'])
                    break

                time.sleep(2)

                tclient.sign_in(user['phone'], code)

            if tclient.is_user_authorized():
                    print(user['phone'] + ' successfully authorized.')
                    time.sleep(5)
                    pass

        except Exception as e:
            print(e)
            print('Skipping this user...')
            time.sleep(5)
            pass

    else:
        print('****USER SELECTED***** {0} already authorized.'.format(user['phone']))

    time.sleep(5)
    return tclient


def scrape(client, file_name):
    dialogs, entities = client.get_dialogs(100)

    avail_channels = {}

    channel_id = None
    channel_index = -1
    for i, entity in enumerate(entities):
        if not isinstance(entity, User) and not isinstance(entity, Chat):
            avail_channels[str(i)] = [entity.title, entity.id]
            # if entity.id != 1342112858 and channel_index == -1: #username = StockAceGroup
            #     channel_index = i

    print('--Available group--')
    for k, v in avail_channels.items():
        print(k, v[0])

    if len(avail_channels) < 1:
        print('Can\'t find any available groups.')
        return

    # channel_index = input("Please select number of super group you want to scrape> ")
    # print("Super group you want to scrape = {1} {0}".format(avail_channels[str(channel_index)][0], str(channel_index)))
    # channel_index = 3
    # channel = client.get_entity(PeerChannel(avail_channels[str(channel_index)][1]))

    offset = 0
    limit = 200
    all_participants = []
    users = []
    print("**Crawling users...")
    channel_index = -1
    for k, v in avail_channels.items():
        try:
            if v[1] == 1342112858: #username = StockAceGroup
                continue
            channel = client.get_entity(PeerChannel(v[1]))
            participants = client.invoke(GetParticipantsRequest(channel, ChannelParticipantsSearch(''), offset, limit))
            if not participants.users:
                continue

            print('---Group \"{0}\" selected'.format(v[0]))

            all_participants.extend(participants.users)
            offset += len(participants.users)
            channel_index = k
            break
        except Exception as e:
            print('Group \"{0}\" failed because '.format(v[0]))
            print(e)
            continue
    print("**Crawling users...end")

    for item in all_participants:
        users.append(
            {'username': item.username, 'id': item.id, 'access_hash': item.access_hash})


    # with open('saksham.json', 'w') as f:
    with open(file_name, 'w') as f:
        json.dump(users, f, indent=4)

    if channel_index != -1:
        print("**All users of the channel " + avail_channels[str(channel_index)][
        0] + " has been stored into " +  file_name)


def add_users(client, file_name):
    dialogs, entities = client.get_dialogs(100)

    avail_channels = {}

    channel = None
    channel_id = None
    channel_access_hash = None
    channel_index = ''
    for i, entity in enumerate(entities):
        if not isinstance(entity, User) and not isinstance(entity, Chat):
            avail_channels[str(i)] = [entity, entity.id, entity.access_hash, entity.title]
            if entity.id == 1342112858: #username = StockAceGroup
                channel_index = str(i)
    # for k,v in avail_channels.items():
    #     print(k, v[3])

    # channel_index = input("Please select number of supergroup where you want to add users> ")

    #participants = client.invoke(GetParticipantsRequest(avail_channels[channel_index][0], ChannelParticipantsSearch(''), 0, 0))
    #count_of_members_before_adding = len(participants.users)
    if channel_index == '':
        print('Can\'t add users because can\'t find StockAce group!')
        return
    else:
        print('Selectetd {0} {1}'.format(channel_index, avail_channels[channel_index][3]))
    users = None
    try:
        with open(file_name, 'r') as f:
            users = json.load(f)

    except Exception:
        print('Invalid file name, make sure you have added extension or if file even exists, if not, run scrape_channel_users.py to create one!')
        return

    # count = int(input('Do you want to add only subset of users('+ str(len(users)) +')? if so, enter the number of users to be added: '))
    count = len(users)

    users_to_save_back = users[count:] # only users, which didnt be used, will be saved to file again
    # print(str(len(users_to_save_back)) + ' users to be saved back to json file!')
    users = users[:count] # users to be added
    # print(str(len(users)) + ' users to be removed from list!')
    # print()

    with open(file_name, 'w') as f:
        json.dump(users_to_save_back, f, indent=4)

    input_users = []
    for item in users:
        input_users.append(InputUser(item['id'], item['access_hash']))
    user_chunks = list(chunks(input_users, 1))

    add_user_count = 0
    for item in user_chunks:
        if add_user_count >= 50:
            break
        try:
            result = client(InviteToChannelRequest(InputChannel(avail_channels[channel_index][1], avail_channels[channel_index][2]),
                                          item))
            if len(result.users) > 0:
                add_user_count = add_user_count + 1
                print('---Adding chunk of 1 users...')
            # print(result.stringify())

            time.sleep(2)
        except Exception as e:
            print(str(e))
            print('some error occurred, skipping to next chunk.')
            time.sleep(2)

    print('--**' + str(add_user_count) + ' users are added')

    #participants = client.invoke(GetParticipantsRequest(avail_channels[channel_index][0], ChannelParticipantsSearch(''), 0, 0))
    #count_of_members_after_adding = len(participants.users)

    #print('Count of members before adding: ' + str(count_of_members_before_adding))
    #print('Count of members after adding: ' + str(count_of_members_after_adding))
    # print()
    #print('True number of added users: ' + str(count_of_members_after_adding - count_of_members_before_adding))
    # print('added')


def chunks(l, n):
    # For item i in a range that is a length of l,
    for i in range(0, len(l), n):
        yield l[i:i+n]


def remove(x):
    users = None
    with open(file_name, 'r') as f:
        users = json.load(f)
    value1=x
    #value1=int(input("The file has" + str(len(users)) + ".Enter how many you want to remove :"))
    print("Removing" + str(value1) + "users")
    users_to_save_back = users[value1:] # only users, which didnt be used, will be saved to file again
    print(str(len(users_to_save_back)) + ' users to be saved back to json file!')
    with open(file_name, 'w') as f:
        try:
            json.dump(users_to_save_back, f, indent=4)
        except Exception as e:
            print(e)


def options(client,file_name):
    client1=client
    file_name1=file_name
    while True:
        value=input("Press 1 for addition if not 50, 2 for deletion from json, else to end :")
        if value=="1":
            add_users(client1,file_name1)
        elif value=="2":
            value2=input("How many?")
            remove(value2)
        else:
            break


if __name__ == '__main__':

    for user in USERS:
        #user = check_arguments()
        client=telegram_connect(user)
        # entity1=client.get_entity('username')
        # client(JoinChannelRequest(entity1))
        # entity4=client.get_entity('')
        # client(JoinChannelRequest())
        # entity2=client.get_entity('')
        # client(JoinChannelRequest(entity2))
        # entity3=client.get_entity('')
        # client(JoinChannelRequest(entity3))
        # try:
        #     updates = client(ImportChatInviteRequest('AAwfJDwHsx9tMOC9E7Z2ng'))
        #     # updates1 = client(ImportChatInviteRequest('IdxcKsxs02nBfeXFeOZUxL-lQ'))
        # except Exception as e:
        #     pass
        file_name = "{1}\\{0}.json".format(user["phone"], "user_res")

        # scrape(client, file_name)
        # file_name = "{0}.json".format(user["phone"])

        # file_name= "saksham.json"
        # remove(3500)
        add_users(client, file_name)
        # options(client,file_name)
        client.disconnect()
