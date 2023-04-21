import pyspark
from pyspark.sql.functions import *

spark = pyspark.sql.SparkSession.builder.appName("solution").getOrCreate()

# Fully streaming 
# ssc = StreamingContext(sc, 10) #10 seconds

#localhost:2181 = Default Zookeeper Consumer Address
# kafkaStream = KafkaUtils.createStream(ssc, 'localhost:2181', 'spark-streaming', {'test':1})
# parsed = kafkaStream.map(lambda v: json.loads(v[1])) #0 is key 1 is value
# print(parsed)

df = spark.readStream.format("kafka").option("kafka.bootstrap.servers", "localhost:9092").option("startingOffsets", "latest").option("subscribe","test").load()
df = df.selectExpr("CAST(key AS STRING)", "CAST(value AS STRING)")
df = df.select("key")
df.writeStream.format("console").option("truncate","false").start().awaitTermination()
# ssc.start()
# ssc.awaitTermination()


