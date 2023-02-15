
from pymongo import MongoClient
host = MongoClient("mongodb")

db = host["sample_db"]
collection = db["sample_collection"]

sample_data = {"Name:":"P K Navin Shrinivas","SRN":"PES2UG20CS237"}
collection.insert_one(sample_data)
print('Inserted into the MongoDB database!')

rec_data = collection.find_one({"SRN":"PES2UG20CS237"})
print("Fecthed from MongoDB: ",rec_data)
