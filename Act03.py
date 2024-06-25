row = int(input("rows: "))

# Top half of the pattern
for i in range(row, 1, -1):
    print("*" * i)

# Middle part of the pattern
print("*" + " " * (row - 2) + "*" if row > 1 else "*")

# Bottom half of the pattern
for j in range(2, row + 1):
    print("*" * j)
