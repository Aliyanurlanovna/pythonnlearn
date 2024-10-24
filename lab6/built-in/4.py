import math
import time

def delayed_sqrt(number, delay_ms):
    time.sleep(delay_ms / 1000)
    return math.sqrt(number)

print(f"Square root after delay: {delayed_sqrt(25100, 2123)}")
