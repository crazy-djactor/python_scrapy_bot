import telethon
from telethon import TelegramClient
from telethon.tl.functions.messages import GetDialogsRequest
from telethon.tl.types import InputPeerEmpty, InputPeerChannel, InputPeerUser, InputChannel
from telethon.tl.functions.channels import InviteToChannelRequest, CheckUsernameRequest
import sys
import csv
import traceback
from settings import USERS
import time
import random

if __name__ == '__main__':

    input_file = 'members.csv'
    adding_users = []
    with open(input_file, encoding='UTF-8') as f:
        rows = csv.reader(f, delimiter=",", lineterminator="\n")
        next(rows, None)
        for row in rows:
            user = {}
            if (row[0] is not None) and (row[0] != ''):
                user['username'] = row[0]
                user['id'] = int(row[1])
                user['access_hash'] = int(row[2])
                user['name'] = row[3]
                user['group'] = row[4]
                user['groupid'] = row[5]
                adding_users.append(user)


    idx = 0
    for user in USERS:
        # api_id = 913592
        # api_hash = '5ec58bea88caaed9e5a3f29bf53c34c2'
        # phone = '+919699567123'
        # ustr = 'Sessions/' + user['phone'], user['api_id'], user['api_hash']
        client = TelegramClient('Sessions/' + user['phone'], user['api_id'], user['api_hash'])
        # client = TelegramClient(user["phone"], user["api_id"], user["api_hash"])
        print('LOGGING IN [{}] :'.format(user["phone"]))
        client.connect()
        if not client.is_user_authorized():
            client.send_code_request(user["phone"])
            str = '[{}] Enter the code: '.format(user["phone"])
            client.sign_in(user["phone"], input(str))

        # input_file = sys.argv[1]
        chats = []
        last_date = None
        chunk_size = 200
        groups = []

        result = client(GetDialogsRequest(
            offset_date=last_date,
            offset_id=0,
            offset_peer=InputPeerEmpty(),
            limit=chunk_size,
        ))
        chats.extend(result.chats)

        for chat in chats:
            try:
                if chat.megagroup:
                    groups.append(chat)
            except:
                continue

        i = 0
        target_group = None
        for group in groups:
            print(str(i) + '- ' + group.title)
            i += 1
            if group.id == 1342112858:
                target_group = group

        if target_group is None:
            continue

        # g_index = input("Enter a Number: ")
        # target_group = groups[int(g_index)]
        target_group_entity = InputPeerChannel(target_group.id, target_group.access_hash)
        # target_group_entity = InputChannel(target_group.id, target_group.access_hash)

        # mode = int(input("Enter 1 to add by username or 2 to add by ID: "))
        mode = 1
        i = 0
        print(len(adding_users))
        while True:
            if idx >= len(adding_users):
                break
            if (i != 0) and (i % 50 == 0):
                client.disconnect()
                break
            adding_user = adding_users[idx]
            idx += 1
            try:
                print("Adding {} {}".format(adding_user['id'], adding_user['username']))
                if mode == 1:
                    if adding_user['username'] == "":
                        continue
                    user_to_add = client.get_input_entity(adding_user['username'])
                    # result = client(CheckUsernameRequest(
                    #     target_group_entity,
                    #     adding_user['username']
                    # ))
                    # print("[CheckUsernameRequest]={}".format(result))
                elif mode == 2:
                    user_to_add = InputPeerUser(adding_user['id'], adding_user['access_hash'])
                else:
                    sys.exit("Invalid Mode Selected. Please Try Again.")
                result = client(InviteToChannelRequest(target_group_entity, [user_to_add]))
                if len(result.users) > 0:
                    i = i + 1
                    print("  *Adding success=[{}]".format(adding_user['username']))
                else:
                    print("  *Already exist or not added=[{}]".format(adding_user['username']))
            except telethon.errors.rpc_errors_400.UsernameNotOccupiedError:
                print("     err:UsernameNotOccupiedError")
                i = i + 1
                continue
            except telethon.errors.rpc_errors.RPCError as e:
                print("     err:{}".format(e))
                i = i + 1
                continue
            except:
                traceback.print_exc()
                print("     err:Unexpected Error")
                i = i + 1
                continue
