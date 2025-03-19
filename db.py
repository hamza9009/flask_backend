import mariadb
import sys
from dotenv import load_dotenv
load_dotenv()
import os
# Database Credentials
DB_CONFIG = {
    "host": os.getenv("DB_HOST"),
    "user": os.getenv("DB_USER"),
    "password": os.getenv("DB_PASSWORD"),
    "database": os.getenv("DB_NAME"),
    # "port": int(os.getenv("DB_PORT"))
}

def get_db_connection():
    try:
        conn = mariadb.connect(**DB_CONFIG)
        return conn
    except mariadb.Error as e:
        print(f"Error connecting to MariaDB: {e}")
        sys.exit(1)

# Example Query
conn = get_db_connection()
cursor = conn.cursor()
cursor.execute("SELECT DATABASE()")
print(cursor.fetchone())
conn.close()
