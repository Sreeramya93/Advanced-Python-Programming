
from dataclasses import dataclass

@dataclass
class Employee:
    employee_Id:int
    employee_name:str
    department:str
employee=Employee(23,"sree","A&D") 
print(employee)
print(employee.employee_Id)  
