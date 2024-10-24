def count_lines_in_file(filepath):
    try:
        with open(filepath, 'r') as file:
            return sum(1 for _ in file)
    except FileNotFoundError:
        return "File not found"

print(count_lines_in_file("test.txt"))

