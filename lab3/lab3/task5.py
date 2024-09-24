class Account:
    def __init__(self, owner, balance=0):
        self.owner = owner
        self.balance = balance
    
    def deposit(self, amount):
        self.balance += amount
        print(f"Deposited {amount}. New balance is {self.balance}.")
    
    def withdraw(self, amount):
        if amount > self.balance:
            print(f"Insufficient funds! Available balance is {self.balance}.")
        else:
            self.balance -= amount
            print(f"Withdrew {amount}. New balance is {self.balance}.")
    
acct = Account("John", 100)
acct.deposit(50)  
acct.withdraw(200)  
acct.withdraw(50)  

