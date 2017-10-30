import os
import sys

def read_file():
    current_dir = os.getcwd()
    if len(sys.argv) < 2:
        print('Please enter an input file as an argument!')
        return None

    file_to_open = os.path.join(current_dir, sys.argv[1])
    if os.path.exists(file_to_open):
        input_file = open(file_to_open)
        file_content = input_file.read()
        print(file_content)
    else:
        print('File entered does not exist!')

read_file()