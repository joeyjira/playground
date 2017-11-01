import os
import sys

def read_file(filename):
    current_dir = os.getcwd()

    file_to_open = os.path.join(current_dir, filename)
    if os.path.exists(file_to_open):
        input_file = open(file_to_open)
        file_content = input_file.readlines()
        return file_content
    else:
        print('File entered does not exist!')

def write_file():
    print('Write File')

def check_file(input_array, database_array):
    content = file.
    for email in input_array:
        if email in database_array:
            return false
    return true

def hiring():
    # Read in the file
    print(sys.argv)
    if len(sys.argv) < 2:
        print('Please enter an input file as an argument!')
        return None
    content = read_file(sys.argv[1])
    print(content)

    # Check the file against mock database
    mock_database = read_file('mock_database.txt')

    # Write to output file

hiring()