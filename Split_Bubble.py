def split(param):
    characters = []
    current_word = ""

    for char in param:
        if char == " ":
            if current_word:
                characters.append(current_word)
                current_word = ""
        else:
            current_word += char
            
    if current_word:
        characters.append(current_word)
        
    return characters

user_input = input("Input a String: ")
result = split(user_input)
print(result)
