import os

def path_info(path):
    if os.path.exists(path):
        return {
            "is_directory": os.path.isdir(path),
            "filename": os.path.basename(path),
            "directory": os.path.dirname(path)
        }
    else:
        return "Path does not exist"

print(path_info("test.txt"))
