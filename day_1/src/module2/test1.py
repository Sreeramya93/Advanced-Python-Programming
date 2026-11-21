from dataclasses import dataclass

@dataclass
class Employee:
    Employee_id: int
    employee_name: str
    department: str


Employee=Employee(200, "viji" , "Dev")


module1.main