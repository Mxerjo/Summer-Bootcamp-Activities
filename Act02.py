from random import randint

FOLD = "fold"
UNFOLD = "unfold"

print("Hayang (fold), Kulob (unfold)")
user = input("Enter fold or unfold: ")

c2 = randint(1, 2)
c3 = randint(1, 2)

if user == UNFOLD:
    print("P1: unfold")
elif user == FOLD:
    print("P1: fold")

if c2 == 2:
    print("C2: unfold")
else:
    print("C2: fold")

if c3 == 2:
    print("C3: unfold")
else:
    print("C3: fold")

if (user == FOLD and c2 == 2 and c3 == 2) or (user == UNFOLD and c2 == 1 and c3 == 1):
    print("You Win")
elif (user == UNFOLD and c2 == 1 and c3 == 2) or (user == FOLD and c2 == 2 and c3 == 1):
    print("C2 wins")
elif (user == UNFOLD and c2 == 2 and c3 == 1) or (user == FOLD and c2 == 1 and c3 == 2):
    print("C3 wins")
else:
    print("Game Draw")



