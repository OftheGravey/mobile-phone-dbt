import duckdb
import pandas as pd

# Get columns from both train and test
## Both are missing a column between eachother
## Train includes price_range, test includes id
## Keep all other descriptive columns, allow for them to change
cols = pd.read_csv("raw/test.csv").columns.to_list()
cols.remove('id')

sql_cols = str(cols).replace('[', '').replace(']', '').replace("'", '"')

# Create a SQL connection to our SQLite database
with duckdb.connect("data/mobile_devices.db") as con:
    cur = con.cursor()

    try:
        cur.execute(f"""
            CREATE TABLE IF NOT EXISTS mobile_device_specs AS 
            (
                SELECT {sql_cols}, price_range
                FROM read_csv("raw/train.csv")
                UNION ALL
                SELECT {sql_cols}, NULL AS price_range
                FROM read_csv("raw/test.csv")
            )
        """)

        # add increment id
        cur.execute("CREATE SEQUENCE id_sequence START 1")
        cur.execute("ALTER TABLE mobile_device_specs ADD COLUMN id INTEGER DEFAULT nextval('id_sequence')")
    
    except duckdb.duckdb.CatalogException:
        print("Database already configured")
    
