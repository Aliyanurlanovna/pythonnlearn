class String:
    def getString(self):
        self.string = input("Enter a string: ")
    
    def printString(self):
        print(self.string.upper())
        
str = String()
str.getString()
str.printString()