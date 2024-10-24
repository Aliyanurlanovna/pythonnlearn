import re

def match_ab_zero_or_more_b(string):
    pattern = r'a[b]*'
    if re.fullmatch(pattern, string):
        return True
    else:
        return False

print(match_ab_zero_or_more_b("ab"))  # True
print(match_ab_zero_or_more_b("a"))   # True
print(match_ab_zero_or_more_b("ac"))  # False
