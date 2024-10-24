import re

def camel_to_snake(camel_str):
    return re.sub(r'(?<!^)(?=[A-Z])', '_', camel_str).lower()

# Example
print(camel_to_snake('helloWorldTest'))  # 'hello_world_test'
