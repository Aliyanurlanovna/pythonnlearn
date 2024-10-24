import re

def replace_with_colon(string):
    return re.sub(r'[ ,.]', ':', string)

# Example
print(replace_with_colon('hello, world. This is a test'))  # 'hello: world: This is a test'
