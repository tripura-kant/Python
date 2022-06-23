#Check the given path is file or directory
import os
path=input("Enter you path: ")
if os.path.isfile(path):
    print(f"the given path: {path} is a file")
else:
    print(f"the given path: {path} is a directory")