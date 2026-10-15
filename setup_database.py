import sqlite3
import pandas as pd
from pathlib import Path

# Project paths
project_dir = Path(__file__).resolve().parent
csv_path = project_dir / "data" / "cleaned_ecommerce_data.csv"
db_path = project_dir / "data" / "ecommerce.db"

# Load the cleaned dataset
data = pd.read_csv("C:\Coursera\ecommerce-business-analytics\data\cleaned\cleaned_ecommerce_data.csv")

# Create the SQLite database and import the data
with sqlite3.connect(db_path) as connection:
    data.to_sql(
        "ecommerce_sales",
        connection,
        if_exists="replace",
        index=False
    )

    # Verify the import
    row_count = pd.read_sql_query(
        "SELECT COUNT(*) AS total_records FROM ecommerce_sales",
        connection
    )

    print(row_count)
    print("Database created:", db_path)