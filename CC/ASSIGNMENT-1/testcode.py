import csv
sample_string_bytes = str(b'----------------------------269573880846629410238680\r\nContent-Disposition: form-data; name="key"; filename="times1.csv"\r\nContent-Type: text/csv\r\n\r\nInno,Vation,Lab,Hashco,Deleven\n14,23,15,18,8\n17,11,29,5,14\n25,20,2,19,14\n0,38,27,2,3\n2,38,5,23,19\n24,3,23,17,13\n1,5,34,10,7\n5,34,0,31,5\n12,4,2,7,8\n23,35,1,6,20\n4,10,31,4,1\n9,18,20,7,8\n9,37,31,29,12\n25,33,17,19,17\n1,34,32,28,13\n0,21,5,28,14\n0,32,12,3,7\n2,16,14,10,9\n0,9,0,19,22\n24,17,6,24,20\n2,4,12,12,12\n7,31,34,7,9\n26,11,20,23,9\n3,21,27,19,6\n5,7,17,32,1\n14,7,26,7,11\n11,8,19,7,22\n14,2,17,20,17\n6,21,28,20,2\n18,18,1,10,20\n24,19,20,28,4\n12,4,23,10,3\n18,19,29,28,8\n19,26,20,20,21\n0,25,4,1,16\n\r\n----------------------------269573880846629410238680--\r\n')
csv_string = ""
sample_string_bytes = sample_string_bytes.split('\\n')[4:-3]
for i in sample_string_bytes:
    # print(i)
    csv_string+=i+"\n"
csv_obj = csv.reader(csv_string.split('\n'))
res = dict()
row_num = 0
col_names = []
for i in csv_obj:
    if row_num == 0:
        # Col names : 
        for j in i :
            res[j] = 0
        col_names = i
        row_num+=1
    else:
        for j in range(0,len(i)): 
            res[col_names[j]] = res[col_names[j]]+int(i[j])
        row_num+=1
for i in res : 
    res[i] = res[i]/(row_num-1)
print(res)
