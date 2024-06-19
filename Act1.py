word = "summer bootcamp"

space = word.replace(" ", "")

print(word[0:7].capitalize() + word[7:17].capitalize())
print(f"{word[0:14].capitalize() + word[-1].capitalize()}")
print(word[7:11].replace("b","L"))
print(word[11:15].replace("p","E"))
print(word[-3].upper() + word[5].upper())
print(space.isalpha())

