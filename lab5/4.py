import re

def match_uppercase_followed_by_lowercase(string):
    return re.findall(r'[A-Z][a-z]+', string)

# Example
print(match_uppercase_followed_by_lowercase('Hello There'))  # ['Hello', 'There']
