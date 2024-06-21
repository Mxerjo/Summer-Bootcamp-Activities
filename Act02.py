from random import randint

# Variable for fold and unfold actions
FOLD = "fold"
UNFOLD = "unfold"

# Generate Vaues for randint
c2,c3 = (randint(1,2)for _ in range(2))

# Welcome Message of the Game
print("FOLD and UNFOLD GAME")

# Get the user input
user = input("Enter 'fold' or 'unfold': ").strip().lower()

# Condition statement for user input
actions = {UNFOLD: "P1: unfold", FOLD: "P1: fold"}
print(actions.get(user, "Invalid action"))

# Condition statement for C2 and C3
print(f"C2: {UNFOLD if c2 == 2 else FOLD}")
print(f"C3: {UNFOLD if c3 == 2 else FOLD}")

# Determine the outcome using a dictionary
outcomes = {
    (FOLD, 2, 2): "You Win",
    (UNFOLD, 1, 1): "You Win",
    (UNFOLD, 1, 2): "C2 wins",
    (FOLD, 2, 1): "C2 wins",
    (UNFOLD, 2, 1): "C3 wins",
    (FOLD, 1, 2): "C3 wins"
}

result = outcomes.get((user, c2, c3), "Game Draw")
print(result)