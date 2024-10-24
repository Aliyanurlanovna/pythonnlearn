def write_list_to_file(filepath, lst):
    with open(filepath, 'w') as file:
        for item in lst:
            file.write(f"{item}\n")

write_list_to_file("output.txt", ["item1", "item2", "item3"])
