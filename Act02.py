row = int(input("Number of Rows: "))
column = int(input("Number of Columns: "))
asterisk = "*"

i = 0

while i < row:
    if i == 0 or i == row - 1:
        print(asterisk * column)
    else:
        print(asterisk + (" " * (column - 2)) + asterisk)
    i += 1
