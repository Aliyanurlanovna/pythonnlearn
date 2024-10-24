import math

def degree_to_radian(degrees):
    return math.radians(degrees)

degrees = float(input("Input degrees: "))
radians = degree_to_radian(degrees)

print(f"Output radians:{radians}")
