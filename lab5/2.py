import re

def match_ab_limited(string):
    return bool(re.fullmatch(r'ab{2,3}', string))


print(match_ab_limited('abb'))   # True
print(match_ab_limited('abbbb')) # False
print(match_ab_limited('ab'))    # False
