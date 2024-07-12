def character_tokenize(input_text):
    characters = []

    for char in input_text:
        characters.append(char)

    return characters

# Taking user input
input_text = input("Enter a text: ")
result = character_tokenize(input_text)
print(result)
