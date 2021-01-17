import os
import string 

if os.path.exists("init.sql"):
    os.remove("init.sql")
printable = set(string.printable)
foreign_key_tables = []
for root, dirs, files in os.walk("./"):
    for file in files:
        if file.endswith(".sql") and file != 'init.sql':
            with open(os.path.join(root,file), 'r') as sql_file:
                text = sql_file.read()
                text = text.replace(';', ';\n')
                text = text.encode('ascii',errors='ignore')
                text = text.decode("utf-8")
                if "FOREIGN KEY" in text:
                    foreign_key_tables.append(text)
                    continue
            print(text)
            with open('init.sql', 'a+') as init_sql:
                init_sql.write(text)
            print(os.path.join(root, file))
for i in foreign_key_tables:
    with open('init.sql', 'a+') as init_sql:
        init_sql.write(i)
