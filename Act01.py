value = [] # List Variable

# User input for list Number
add_list = [int(input(f"{list}Enter List: ")) for list in ["", "","","",""]]
value.append(add_list)

# Condition for dropping a value in list
while True:
    boss = input("\nNaa or Wala?: ").strip().capitalize()

    if boss == "Naa":
        add_list.pop(0)
        print(add_list)
    elif boss == "Wala":
        add_list.pop()
        print(add_list)




    
        

    