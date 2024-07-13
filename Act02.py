user = input("Enter a string: ")
lis = "TRYAS"
first = 0
last = 0
for index,i in enumerate(user):
    if i == lis[0] and user[index+1] == lis[1] and user[index+2] == lis[2] and user[index+3] == lis[3] and user[index+4] == lis[4]:
        first += index
        last += index+4
        break
    else:
        ...

print(f"The word {lis} is in index {first} until {last}")