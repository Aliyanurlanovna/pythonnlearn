import re

def split_at_uppercase(string):
    return re.split(r'(?=[A-Z])', string)

# Example
print(split_at_uppercase('HelloThereWorld'))  # ['Hello', 'There', 'World']
