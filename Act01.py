Word = input("Enter a word: ")
Keyword = input("Enter a Keyword: ")

index = Word.find(Keyword) 

if index != -1:  
    start_index = index
    end_index = index + len(Keyword) - 1
    print(f"Pattern '{Keyword}' starts at index {start_index} and ends at index {end_index}")
else:
    print(f"Pattern '{Keyword}' not found in the string.")