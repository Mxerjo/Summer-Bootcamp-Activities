from random import randint

# Constants representing fold and unfold values
FOLD = "fold"
UNFOLD = "unfold"

# Prompt the user for input
print("Hayang (fold), Kulob (unfold)")
user = input("Enter fold or unfold: ")

# Generate random values for C2 and C3 (1 for fold, 2 for unfold)
c2 = randint(1, 2)
c3 = randint(1, 2)

# Print user's choice
if user == UNFOLD:
    print("P1: unfold")
elif user == FOLD:
    print("P1: fold")

# Print C2's choice
if c2 == 2:
    print("C2: unfold")
else:
    print("C2: fold")

# Print C3's choice
if c3 == 2:
    print("C3: unfold")
else:
    print("C3: fold")

# Determine the outcome of the game
if (user == FOLD and c2 == 2 and c3 == 2) or (user == UNFOLD and c2 == 1 and c3 == 1):
    print("You Win")
elif (user == UNFOLD and c2 == 1 and c3 == 2) or (user == FOLD and c2 == 2 and c3 == 1):
    print("C2 wins")
elif (user == UNFOLD and c2 == 2 and c3 == 1) or (user == FOLD and c2 == 1 and c3 == 2):
    print("C3 wins")
else:
    print("Game Draw")



