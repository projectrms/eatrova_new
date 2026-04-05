import sqlite3

conn = sqlite3.connect("restaurant.db")

with open("dump.sql", "w", encoding="utf-8") as f:
    for line in conn.iterdump():
        f.write(line + "\n")

conn.close()

print("Dump created successfully!")