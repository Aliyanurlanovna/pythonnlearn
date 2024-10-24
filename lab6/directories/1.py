import os

def list_directories_and_files(path):
    for root, dirs, files in os.walk(path):
        print("Directories:", dirs)
        print("Files:", files)

list_directories_and_files(".")
