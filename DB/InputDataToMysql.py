import pandas as pd
import os
from sqlalchemy import create_engine
import pymysql

engine = create_engine('mysql+pymysql://baby:20020730@localhost:3306/F')
work_conn_read = engine.connect()

#excel文件相对地址
df = pd.read_excel("./Festival.xlsx")
#导入数据库的表名
df.to_sql("Festival",con=work_conn_read,if_exists='append', index=False)