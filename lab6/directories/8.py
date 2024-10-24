import os

def delete_file(filepath):
    if os.path.exists(filepath) and os.access(filepath, os.W_OK):
        os.remove(filepath)
        print(f"{filepath} deleted")
    else:
        print("File not found or not writable")

delete_file("B.txt")
