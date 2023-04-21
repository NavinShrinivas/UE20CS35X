import csv
import json

with open('data.csv') as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    line_count = 0
    for row in csv_reader:
        if line_count == 0:
            print("id,screenName,tag,followerCount,lang,tweetID")
            line_count += 1
        else:
            try :
                line_count += 1
                print(row[0],",",row[1],",",json.loads(row[2])[0],",",row[4],",",row[6],",",row[8],sep="")
            except: 
                continue
    # print(f'Processed {line_count} lines.')
