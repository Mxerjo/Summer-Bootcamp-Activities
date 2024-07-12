def bubble_split(input_string):
    characters = []
    current_word = ""
    
    for char in input_string:
        if char == " ":
            characters.append(current_word)
            current_word = ""
        else:
            current_word += char
    
    if current_word:
        characters.append(current_word)
    
    return "\n".join(characters)

# Taking user input
input_str = input("Enter a string: ")
result = bubble_split(input_str)
print(result)
