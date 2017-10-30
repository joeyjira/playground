import os
import sys

def read_file(filename):
    current_dir = os.getcwd()


    file_to_open = os.path.join(current_dir, filename)
    if os.path.exists(file_to_open):
        input_file = open(file_to_open)
        file_content = input_file.readlines()
    else:
        print('File entered does not exist!')

def write_file():
    print('Write File')

def check_file():
    print('Check file')

def hiring():
    # Read in the file
    if len(sys.argv) < 2:
        print('Please enter an input file as an argument!')
        return None
    content = read_file(sys.argv[1])

    # Check the file against mock database
    mock_database = read_file('mock_database.txt')

    # Write to output file

hiring()