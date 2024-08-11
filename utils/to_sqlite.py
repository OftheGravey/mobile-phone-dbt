import pandas as pd
import sqlite3

test = pd.read_csv("raw/test.csv")
train = pd.read_csv("raw/train.csv")

df = pd.concat([train, test])

# Create a SQL connection to our SQLite database
con = sqlite3.connect("data/mobile_devices.db")

cur = con.cursor()

# Remove current id column, replace with pandas index
### This is because dataset contains id field only for test data
df = df.reset_index()
df = df.drop(['id'], axis=1) 
df = df.rename(columns={'index':'id'})

df.to_sql("mobile_device_specs", con=con, index=False)

con.close()

