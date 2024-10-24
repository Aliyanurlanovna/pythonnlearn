import re

def insert_spaces(string):
    return re.sub(r'(?=[A-Z])', ' ', string).strip()

# Example
print(insert_spaces('HelloThereWorld'))  # 'Hello There World'
