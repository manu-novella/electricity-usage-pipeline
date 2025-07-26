import dlt
from pyspark.sql.functions import input_file_name

@dlt.table(comment="Raw meter readings from smart meters")
def bronze_meter_data():
    return (
        spark.read.format("cloudFiles")
        .option("cloudFiles.format", "csv")
        .option("header", "true")
        .load("/FileStore/meter_data_sample.csv")
        .withColumn("source_file", input_file_name())
    )