
import pyspark
from pyspark.sql.functions import *

spark = pyspark.sql.SparkSession.builder.appName("solution2").getOrCreate()

# Fully streaming 
# ssc = StreamingContext(sc, 10) #10 seconds

#localhost:2181 = Default Zookeeper Consumer Address
# kafkaStream = KafkaUtils.createStream(ssc, 'localhost:2181', 'spark-streaming', {'test':1})
# parsed = kafkaStream.map(lambda v: json.loads(v[1])) #0 is key 1 is value
# print(parsed)

# Streaming : 
df = spark.readStream.format("kafka").option("kafka.bootstrap.servers", "localhost:9092").option("startingOffsets", "latest").option("subscribe","test").option("includeTimestamp","true").load()
query = df.select((df.key).alias("HashTag"),(df.timestamp).alias("time")).groupBy(window("time","20 seconds"),"HashTag").count().sort(desc("window"))
query = query.selectExpr("CAST(window AS STRING)","CAST(HashTag AS STRING)", "CAST(count AS STRING)")
query.writeStream.outputMode("complete").format("console").option("truncate","false").start().awaitTermination()

