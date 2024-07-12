def sentence_tokenize(input_text):
    sentences = []
    current_sentence = ""
    terminals = {'.', '?', '!'}

    for char in input_text:
        current_sentence += char
        if char in terminals:
            sentences.append(current_sentence.strip())
            current_sentence = ""

    if current_sentence:
        sentences.append(current_sentence.strip())

    return sentences

# Taking user input
input_text = input("Enter a paragraph: ")
result = sentence_tokenize(input_text)
print(result)
