#code to format API result for database insertion
filename = r'DatabaseOutputs\HSEDB.txt'#input API result

with open(filename, 'r+') as file:
    contents = file.read()

    modified_contents = contents.replace("', '", ", ").replace('\n', ',\n').replace("'[", "").replace("]'", "")#remove tags from API result
    file.seek(0)#go to start
    file.write(modified_contents)#write over
    file.truncate()
