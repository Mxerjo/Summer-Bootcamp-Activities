texts = ["unhappy", "beautiful", "unaware", "unwanted", "unkind"]
sub_words = []

for text in texts:
    for word in text.split():
        if word == "beautiful":
            sub_words.append( word[:6] + '#' * 3)  # prefix ni
            sub_words.append(word[-3:]) # suffix ni
        elif len(word) > 3:
            sub_words.append(word[:2])
            sub_words.append('##' + word[2:])
        else:
            sub_words.append(word)

print("Subwords:", sub_words)