import dlt
from pyspark.sql.functions import col

@dlt.table(comment="Cleaned meter readings with proper types")
def silver_meter_data():
    df = dlt.read("bronze_meter_data")
    return (
        df
        .filter(col("consumption_kwh") > 0)
        .withColumn("consumption_kwh", col("consumption_kwh").cast("double"))
        .withColumn("timestamp", col("timestamp").cast("timestamp"))
    )
