list_store = {}
credentials_file = 'credentials.txt'

def register(usn, passw):
    if usn in list_store:
        return "Invalid. Username already exists."
    list_store[usn] = passw
    with open(credentials_file, 'w') as f:
        f.write(f"Registered: Username: {usn}, Password: {passw}\n")
    return "Registered successfully"

def login(usn, passw):
    if usn not in list_store:
        return "Invalid. Username does not exist."
    if list_store[usn] != passw:
        return "Invalid. Password does not match."
    return "Logged in successfully"

def changepass(usn, oldpass, newpass):
    if usn not in list_store:
        return "Invalid. Username does not exist."
    if list_store[usn] == oldpass:
        list_store[usn] = newpass

        with open(credentials_file, 'r') as file:
            lines = file.readlines()
        with open(credentials_file, 'w') as file:
            for line in lines:
                if line.startswith(f"Registered: Username: {usn}, Password: "):
                    file.write(f"Registered: Username: {usn}, Password: {newpass}\n")
                else:
                    file.write(line)
        return "Password changed successfully"
    else:
        return "Invalid. Old password does not match."

def change_username(usn, new_usn):
    if usn not in list_store:
        return "Invalid. Username does not exist."
    list_store[new_usn] = list_store.pop(usn)
    with open(credentials_file, 'r') as file:
        lines = file.readlines()
    with open(credentials_file, 'w') as file:
        for line in lines:
            if line.startswith(f"Registered: Username: {usn}, Password: "):
                file.write(f"Registered: Username: {new_usn}, Password: {list_store[new_usn]}\n")
            else:
                file.write(line)
    return "Username changed successfully"

def main():
    while True:
        print("\n***OPTIONS***")
        print("1. Register (register) \n2. Login (login) \n3. Exit (exit)")
        choice = input("Input your option: ").strip().lower()

        if choice == 'register':
            print("\n***REGISTRATION***")
            usn = input("Username: ")
            passw = input("Password: ")
            print(register(usn, passw))
        elif choice == 'login':
            print("\n***LOGIN***")
            usn = input("Username: ")
            passw = input("Password: ")
            login_result = login(usn, passw)
            print(login_result)
            if login_result == "Logged in successfully":
                while True:
                    print("\n***OPTIONS***")
                    print("1. Change Password (changepass)\n2. Change Username (changeusn)\n3. Logout (logout)")
                    sub_choice = input("Enter your choice: ").strip().lower()
                    if sub_choice == 'changepass':
                        oldpass = input("Old Password: ")
                        newpass = input("New Password: ")
                        print(changepass(usn, oldpass, newpass))
                    elif sub_choice == 'changeusn':
                        new_usn = input("New Username: ")
                        print(change_username(usn, new_usn))
                        usn = new_usn 
                    elif sub_choice == 'logout':
                        print("Logged out successfully")
                        break
                    else:
                        print("\nInvalid choice. Try again.")
        elif choice == 'exit':
            print("Exiting the program. Goodbye!")
            break
        else:
            print("\nInvalid choice. Try again.")

main()
