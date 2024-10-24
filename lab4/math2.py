def area_of_trapezoid(b1, b2, h):
    return 0.5 * (b1 + b2) * h


h = float(input("Height: "))
b1 = float(input("Base, first value: "))
b2 = float(input("Base, second value:: "))


area = area_of_trapezoid(b1, b2, h)

print(f"Expected Output: {area}")
