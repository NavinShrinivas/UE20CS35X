#!/usr/bin/env python3

# import csv ## Needs csv cus the data has this one value with commas ""
#
# ## Annoying :(, .split() failes where there commas inside string values
#
# bootstrap_servers = ['localhost:9092']
# topicName = sys.argv[1]
# producer = KafkaProducer(bootstrap_servers = bootstrap_servers)
#
# for line in sys.stdin:
#     if line == "EOF\n" or line == "EOF":
#         producer.send(topicName, value=line.encode())
#         continue
#     # line_csv =  csv.reader([line.strip()])
#     # line_split = list()
#     # for row in line_csv :  # Only way to get line outof csv iterator
#     #     line_split = row 
#     # val = line_split[6]+","+line_split[7]
#     # print(val)
#     producer.send(topicName, key="test".encode(), value=line.encode())
# producer.flush()
# producer.close()

from mysql.connector import connect, Error
from kafka import KafkaProducer
import sys
import time

bootstrap_servers = ['localhost:9092']
topicName = sys.argv[1]
producer = KafkaProducer(bootstrap_servers = bootstrap_servers)
try:
    with connect(host="localhost",user="dbtuser",password="dbtpass",database="dbt") as connection:
        with connection.cursor() as cursor : 
            cursor.execute("SELECT * from data;")
            for db in cursor:
                print(db[3])
                line = db[0]+","+db[1]+","+db[2]+","+str(db[3])+","+db[4]+","+db[5]
                producer.send(topicName, key=db[0].encode(), value=line.encode())
                time.sleep(1)
except Error as e:
    print(e)
