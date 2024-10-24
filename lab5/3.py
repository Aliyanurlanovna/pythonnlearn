import re

def match_lowercase_with_underscore(string):
    return re.findall(r'[a-z]+_[a-z]+', string)

# Example
print(match_lowercase_with_underscore('hello_world test_code'))  # ['hello_world', 'test_code']
