
import pandas as pd
from sqlalchemy import create_engine

# Укажите путь к вашему файлу
file_path = r'C:\Users\Assiya\Downloads\gymmembers.csv'

# Чтение файла с разделителем ";"
try:
    df = pd.read_csv(file_path, sep=';', encoding='utf-8')
except UnicodeDecodeError:
    df = pd.read_csv(file_path, sep=';', encoding='latin-1')

# Проверьте данные
print(df.head())

# Подключение к PostgreSQL
engine = create_engine('postgresql://postgres:Tttaaa2006@localhost:5432/fit')

# Загрузка данных в PostgreSQL
df.to_sql('workout_data', engine, if_exists='replace', index=False)
print("Данные успешно загружены в PostgreSQL.")
