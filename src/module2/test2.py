
    
def my_decorator(func):
    def wrapper():
        print("Before function execution")
        func()
        print("After function execution")
    return wrapper
@my_decorator
def welcome():
    print("Welcome to python")
# welcome()  
@my_decorator  
def addition():
    print("Addition")
addition() 
welcome()           
