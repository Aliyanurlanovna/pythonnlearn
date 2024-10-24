def generate_squares(a, b):
    for i in range(a, b + 1):
        yield i * i

a = 3
b = 11
for square in generate_squares(a, b):
    print(square)
