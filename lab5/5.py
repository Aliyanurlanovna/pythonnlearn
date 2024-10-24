import re

def match_a_to_b(string):
    return bool(re.fullmatch(r'a.*b', string))

# Example
print(match_a_to_b('a1234b'))  # True
print(match_a_to_b('axb'))     # True
print(match_a_to_b('acb'))     # True
