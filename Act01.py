from random import randint

# Initialize Variables
accounts = {}

# Function to create an account
def create_account():
    account_id = randint(10000, 99999)
    account_fname = input("First Name: ")
    account_lname = input("Last Name: ")
    accounts[account_id] = {'f_name': account_fname, 'l_name': account_lname, 'balance': 0}
    print(f"\nAccount created successfully!\nName: {account_fname} {account_lname}\nAccount ID: {account_id}")

# Function to handle account operations
def account_operation(user_id, operation):
    if operation == 'balance':
        print(f"\nYour current balance is P{accounts[user_id]['balance']:.2f}")
    else:
        amount = float(input(f"Enter amount to {operation}: "))
        if operation == 'deposit':
            if amount > 0:
                accounts[user_id]['balance'] += amount
                print(f"P{amount:.2f} has been deposited to your account.")
            else:
                print("Deposit amount must be greater than 0.")
        elif operation == 'withdraw':
            if amount > accounts[user_id]['balance']:
                print("Insufficient balance.")
            elif amount < 0:
                print("Withdrawal amount must be greater than 0.")
            else:
                accounts[user_id]['balance'] -= amount
                print(f"P{amount:.2f} has been withdrawn from your account.")
        elif operation == 'delete':
            if input("Do you want to delete this account? (yes/no): ").strip().lower() == 'yes':
                del accounts[user_id]
                print(f"Account with ID {user_id} has been deleted successfully.")
                return True
            else:
                print("Account deletion cancelled.")
    return False

# Main menu for the banking system
def main_menu():
    while True:
        print("\n====Welcome to the Asian United Bank====")
        print("|(1) Register | (2) Sign in | (3) Exit |")
        choice = input("Input your choice: ")

        if choice == '1':
            create_account()
        elif choice == '2':
            user_id = int(input("Enter your User ID: "))
            if user_id in accounts:
                print(f"\nWelcome, {accounts[user_id]['f_name']} {accounts[user_id]['l_name']}!")
                while True:
                    print("\nMy Bank System")
                    print("1. Check Balance")
                    print("2. Deposit")
                    print("3. Withdraw")
                    print("4. Delete Account")
                    print("5. Logout")
                    choice = input("\nEnter your choice (1-5): ")

                    if choice == '1':
                        account_operation(user_id, 'balance')
                    elif choice == '2':
                        account_operation(user_id, 'deposit')
                    elif choice == '3':
                        account_operation(user_id, 'withdraw')
                    elif choice == '4':
                        if account_operation(user_id, 'delete'):
                            break
                    elif choice == '5':
                        if input("Are you sure you want to log out? (yes/no): ").strip().lower() == 'yes':
                            print("Logging out. Goodbye!")
                            break
                        else:
                            print("Log out cancelled.")
                    else:
                        print("Invalid choice. Please select a valid option.")
            else:
                print("Account not found. Please try again.")
        elif choice == '3':
            print("Thank you for banking with us!")
            break
        else:
            print("Invalid choice. Please try again.")

# Start the banking system
main_menu()
