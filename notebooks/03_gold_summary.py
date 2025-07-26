import dlt
from pyspark.sql.functions import avg, window

@dlt.table(comment="Daily average kWh per meter")
def gold_daily_summary():
    df = dlt.read("silver_meter_data")
    return (
        df.groupBy("meter_id", window("timestamp", "1 day"))
        .agg(avg("consumption_kwh").alias("avg_daily_kwh"))
    )
