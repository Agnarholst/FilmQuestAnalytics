import sqlite3 
import pandas as pd


# Step 1. Load data file
df = pd.read_csv('../Letterboxd-Data/watched.csv')
 
# Step 2. Data Clean Up
df.columns = df.columns.str.strip()

colmap = {
    'Date': 'watch_date',
    'Name': 'title',
    'Year': 'year',
    'Letterboxd URI': 'letterboxd_url'
}
df = df.rename(columns=colmap)
df = df[['watch_date', 'title', 'year', 'letterboxd_url']]


# Step 4. Connect and Load data file to SQLite 
with sqlite3.connect('../data.db') as conn:
    cur = conn.cursor()
    cur.execute("DROP TABLE IF EXISTS watched;")
    cur.execute('''
        CREATE TABLE watched (
                   id INTEGER PRIMARY KEY AUTOINCREMENT,
                   watch_date TEXT,
                   title TEXT,
                   year INTEGER,
                   letterboxd_url TEXT
                   );
               ''')
    df.to_sql('watched', conn, if_exists='append', index=False)

    total = pd.read_sql_query("SELECT COUNT(*) AS n FROM watched", conn)
    sample = pd.read_sql_query("SELECT * FROM watched LIMIT 5;", conn)
    print(total)
    print(sample)

# Step 5. Add Rating column from ratings.csv file

df = pd.read_csv('../Letterboxd-Data/ratings.csv')

# Step 6. Data Clean Up
df.columns = df.columns.str.strip()

colmap = {
    'Rating': 'rating'
}

df = df.rename(columns=colmap)
df = df[['rating']]


with sqlite3.connect('../data.db') as conn:
    cur = conn.cursor()
    cur.execute('''
                ALTER TABLE watched
                ADD COLUMN rating INT;
               ''')
    df.to_sql('watched', conn, if_exists='append', index=False)
