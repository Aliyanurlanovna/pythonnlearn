def copy_file_content(source, destination):
    try:
        with open(source, 'r') as src_file, open(destination, 'w') as dest_file:
            for line in src_file:
                dest_file.write(line)
    except FileNotFoundError:
        print("Source file not found")

copy_file_content("source.txt", "destination.txt")
