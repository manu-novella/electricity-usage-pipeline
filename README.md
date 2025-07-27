# Meter Data ETL Pipeline with Delta Live Tables

This repository contains a simple ETL pipeline implemented with Databricks Delta Live Tables (DLT) to process smart meter data from raw ingestion to aggregated summaries.

## Pipeline Overview

The pipeline is organized into three main stages following the bronze-silver-gold data architecture pattern:

- **Bronze (Raw Ingest)**  
  - File: `notebooks/01_bronze_ingest.py`  
  - Ingests raw CSV meter readings from cloud storage and adds the source file name.  

- **Silver (Cleaned Data)**  
  - File: `notebooks/02_silver_clean.py`  
  - Cleans and filters raw data, casts columns to correct data types, and removes invalid consumption values.  

- **Gold (Aggregated Summary)**  
  - File: `notebooks/03_gold_summary.py`  
  - Aggregates cleaned data to compute daily average energy consumption per meter.  

## Requirements

- Databricks environment with Delta Live Tables enabled  
- Input CSV file located at `/FileStore/meter_data_sample.csv`

## How to Run

Deploy the notebooks as Delta Live Tables pipeline in your Databricks workspace. The tables `bronze_meter_data`, `silver_meter_data`, and `gold_daily_summary` will be created automatically.
