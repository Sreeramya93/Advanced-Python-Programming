class InvalideSalaryError(Exception):
    pass
def calculate(salary):
    if salary<=0:
        raise InvalideSalaryError("salary must be greater than zero")
    print("Employee salary",salary)
try:
    calculate(-5000)
except InvalideSalaryError as error:
    print("Error",error) 
       


