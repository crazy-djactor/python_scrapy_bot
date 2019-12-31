import argparse
import os
import camelot
import pathlib
from openpyxl import Workbook
import tkinter as tk
from tkinter.filedialog import askdirectory

class PdfProcess:
    def __init__(self):
        self.workbook = Workbook()
        self.ws1 = self.workbook.active
        self.ws1.title = "part_desc"
        self.ws1['A1'] = "part_number"
        self.ws1['B1'] = "revision"
        self.ws1['C1'] = "description"

        self.ws2 = self.workbook.create_sheet("kitinfo")
        self.ws2['A1'] = "part part #"
        self.ws2['B1'] = "child part #"
        self.ws2['C1'] = "revision"
        self.ws2['D1'] = "quantity"
        self.ws2['E1'] = "desc"

    def recogColumn(self, tbl_firtrow):
        returnarray = [0, 1, 2, 3]
        findColumnIndex = []
        findColumnIndex.append(tbl_firtrow.find('ITEM NO'))
        findColumnIndex.append(tbl_firtrow.find('QTY'))
        findColumnIndex.append(tbl_firtrow.find('PART'))
        findColumnIndex.append(tbl_firtrow.find('DESCRIP'))
        for i in range(0, 4):
            if findColumnIndex[i] < 0:
                return []
        for i in range(0,3):
            for j in range(i + 1, 4):
                if findColumnIndex[i] > findColumnIndex[j]:
                    ntemp = returnarray[i]
                    returnarray[i] = returnarray[j]
                    returnarray[j] = ntemp
                    ntemp = findColumnIndex[i]
                    findColumnIndex[i] = findColumnIndex[j]
                    findColumnIndex[j] = ntemp
        return returnarray

    def parsestring(self, columnum, str_row):
        str_row = str_row.strip(';')
        st_prest = str_row.split(';')
        st_prest[0] = st_prest[0].replace('\n', ' ')
        # case ITEM_NO
        if columnum == 0:
            str_idx = st_prest[0].strip().split(' ')
            if str_idx[0].isdigit() == False:
                return {'rets': '',
                        'pro_str': str_row}
            str_ret = str_idx[0]
            strprocessed_row = str_row[len(str_ret):].strip()
            return {'rets': str_ret,
                    'pro_str': strprocessed_row}

        # case QTY
        if columnum == 1:
            str_idx = st_prest[0].strip().split(' ')
            if str_idx[0].isdigit() == False:
                return {'rets':'',
                        'pro_str': str_row}
            str_ret = str_idx[0]

            strprocessed_row = str_row[len(str_ret):].strip()
            return {'rets': str_ret,
                    'pro_str': strprocessed_row}

        # case PART_NUMBER
        if columnum == 2:
            str_ret = st_prest[0]
            strprocessed_row = str_row[len(str_ret):].strip()
            return {'rets': str_ret,
                    'pro_str': strprocessed_row}

        # case DESCRIPTION
        if columnum == 3:
            str_ret = st_prest[0]
            strprocessed_row = str_row[len(str_ret):].strip()
            return {'rets': str_ret,
                    'pro_str': strprocessed_row}

    def proc(self, pdf_path):
        # scrapping itemno & qty & partno & description
        print("processing={0}".format(pdf_path))
        try:
            # # scrapping title & drawing number & rev
            tables_title = camelot.read_pdf(pdf_path, pages='1',
                                            table_areas=['393, 73, 772, 17'], flag_size=True, line_scale=40,
                                            kind='grid',
                                            shift_text=['r', 'b'])
        except:
            print("*****processingTITLE={0}*******".format(pdf_path))
        pass

        #
        i = 0
        for table in tables_title:
            title_data = table.data
            if len(title_data) != 3:
                continue
            if len(title_data[0]) != 5:
                continue
            title = title_data[0][4]
            drawing_number = title_data[2][3].replace("DRAWING NUMBER", "").strip()
            revision = title_data[2][4].replace("REV", "").strip()
            print("----drawing={1}, revision={2}, desc={0}".format(title, drawing_number, revision))
            self.ws1.append([drawing_number,revision,title])
            # table.to_excel('output_title' + str(i) + '.xlsx', header=True, index=False)

        try:
            tables_desc = camelot.read_pdf(pdf_path, pages='1', flavor='stream', table_areas=['3, 573, 550, 360'],
                                           flag_size=True, edge_tol=500, row_tol=10, split_text=True)
        except:
            print("*****processing_DESCRIPTION={0}*******".format(pdf_path))
            return

        for table in tables_desc:
            table_data = table.data

            if len(table_data) <= 1:
                continue
            if len(table_data[0]) < 3:
                continue
            # print("{0}-{1}-{2}-{3}-{4}".format(len(table_data), len(table_data[0]),
            #                                    table_data[0][0], table_data[0][1], table_data[0][2]))
            # table.to_excel('output_C.xlsx', header=True, index=False)

            j = 0
            columnRow = ""
            for j in range(0, len(table_data[0])):
                strtemp = columnRow
                columnRow = "{0}{1}".format(strtemp, table_data[0][j])

            # 0 = item no, 1 = qty, 2 = part no, 3 = desc
            columnlist = self.recogColumn(columnRow)

            if len(columnlist) > 0:
                for i in range(1, len(table_data)):
                    j = 0
                    strinfo = []
                    strdata = ""
                    for row_data in table_data[i]:
                        strtemp = strdata
                        strdata = "{0};{1}".format(strtemp, row_data)

                    for j in range(0, 4):
                        strinfo.append('')
                    for j in range(0, 4):
                        try:
                            row_info = self.parsestring(columnlist[j], strdata)
                        except:
                            print("*****processingEXCEPTION={0}*******".format(pdfpath))
                            return
                        pass

                        if row_info['rets'] == '':
                            return
                        strinfo[columnlist[j]] = row_info['rets']
                        strdata = row_info['pro_str']
                    # strdata = strdata.strip(';')
                    # strdata = strdata.strip('')
                    #
                    # tblinfo = strdata.split(';', 1)
                    # tblinfo[0] = tblinfo[0].replace('\n', ' ')
                    #
                    #
                    # index = tblinfo[0].split(' ')
                    #
                    # if int(index[0]) != str(i):
                    #     break
                    # for index_str in index:
                    #     strinfo.append(index_str)
                    #     j = j + 1
                    #
                    # # quantity = table_data[i][1].split(' ')
                    # if len(tblinfo) <= 1:
                    #     break
                    # strdata = tblinfo[1]
                    # tblinfo = strdata.split(';', 1)
                    # tblinfo[0] = tblinfo[0].replace('\n', ' ')
                    # quantity = tblinfo[0].split(' ', 1)
                    #
                    # if len(quantity) >= 2:
                    #     strinfo.append(quantity[0])
                    #     j = j + 1
                    #     strinfo.append(quantity[1])
                    #     j = j + 1
                    # else:
                    #     strinfo.append(quantity[0])
                    #     j = j + 1
                    #
                    #
                    # if len(tblinfo) <= 1:
                    #     if j > 3:
                    #         self.ws2.append([drawing_number, strinfo[2], revision, int(strinfo[1]), strinfo[3]])
                    #         print("-------{0}  {1}  {2}  {3}  {4}".format(drawing_number, strinfo[2], revision,
                    #                                                       strinfo[1], strinfo[3]))
                    #     break

                    # strdata = tblinfo[1]
                    # tblinfo = strdata.split(';', 1)
                    #
                    # if j == 3:
                    #     desc = tblinfo[0]
                    #     strinfo.append(desc)
                    #     j = j + 1
                    # else:
                    #     if j < 3:
                    #         desc = tblinfo[0].split(' ', 1)
                    #         strinfo.append(desc[0])
                    #         j = j + 1
                    #         if len(desc) > 1:
                    #             strinfo.append(desc[1])
                    #             j = j + 1
                    if j == 3:
                        if strinfo[0].isdigit() == True:
                            self.ws2.append([drawing_number, strinfo[2], revision, int(strinfo[1]), strinfo[3]])
                            print("-------{0}  {1}  {2}  {3}  {4}".format(drawing_number, strinfo[2], revision, strinfo[1], strinfo[3]))

    def proc_folder(self, base_dir, res_path):
        if os.path.isfile(res_path):
            os.remove(res_path)
        # pdfpath = os.path.join(base_dir, 'A1.PDF')
        # self.proc(pdfpath)
        for entry in os.listdir(base_dir):
            pdfpath = os.path.join(base_dir, entry)
            if os.path.isfile(pdfpath):
                ext = pathlib.Path(pdfpath).suffix
                if ext.lower() == '.pdf':
                    try:
                        self.proc(pdfpath)
                    except:
                        print("*****processingEXCEPTION={0}*******".format(pdfpath))
                        pass

        self.workbook.save(res_path)
        print("===[Finished]===")

if __name__ == '__main__':
    # parser = argparse.ArgumentParser()
    # parser.add_argument('-path', action='store', dest='pdf_path',
    #                     help='Store a simple value')
    # base_path = os.path.dirname(os.path.abspath(__file__))
    # # pdfpath = os.path.join(base_path, 'tom_scrap/')
    # pdfpath = "D:/processingEXCEPTION"
    # res_path = os.path.join(base_path, 'KIT_RES.xlsx')
    # a = PdfProcess()
    # result = parser.parse_args()
    # # # a.proc_folder(result.pdf_path, res_path)
    # a.proc_folder(pdfpath, res_path)

    root = tk.Tk()

    canvas1 = tk.Canvas(root, width=300, height=300)
    canvas1.pack()

    def cmdButtonOK():
        label1 = tk.Label(root, text='PDF-EXE!', fg='green', font=('helvetica', 12, 'bold'))
        canvas1.create_window(150, 200, window=label1)
        dirname = askdirectory(initialdir=os.getcwd(), title='Please select a pdf-directory')
        a = PdfProcess()
        res_path = os.path.join(dirname, 'KIT_RES.xlsx')
        a.proc_folder(dirname, res_path)


    button1 = tk.Button(text='Open PDF', command=cmdButtonOK, bg='brown', fg='white')
    canvas1.create_window(150, 150, window=button1)
    root.mainloop()