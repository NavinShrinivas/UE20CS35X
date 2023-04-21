#!/usr/bin/env python3

from kafka import KafkaConsumer
import sys
import json

topic = sys.argv[1]
consumer = KafkaConsumer(topic)
state_count = dict()
state_min_max = dict()
for message in consumer:
    print(message.value.decode())
