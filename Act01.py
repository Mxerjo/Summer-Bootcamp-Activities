def is_palindrome(s):
    join_string = ''.join(char.lower() for char in s if char.isalnum())
    return s == join_string[::-1]

def reverse_word(s):
    return ''.join(char.lower() for char in s if char.isalnum())[::-1]

user_input = input("Enter a Word: ")

print("A Palindrome." if is_palindrome(user_input) else "Not a Palindrome.")
print(f"Reversed word: {reverse_word(user_input)}")
