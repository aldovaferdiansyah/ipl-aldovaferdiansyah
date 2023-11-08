package cleancode;

class Employee {
    int payAmount(){
        swicth (getType()){
            case EmployeeType.ENGINEER:
                return _month1ySalary;
            case EmployeeType.SALESMAN:
                return _month1ySalary + _commission;
            case Employee.MANAGER:
                return _month1ySalary + _bonus;
            default:
                throw new Exception("Incorrect Employee");
        }
    }
}