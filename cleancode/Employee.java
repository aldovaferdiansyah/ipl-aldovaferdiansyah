package cleancode;

class Employee {
    class EmployeeType {
        abstract int payAmount(Employee emp);
    }
    class Salesman{
        int payAmount(Employee emp){
            return emp.getMonth1Salary() + emp.getCommission();
        }
    }
    class Manager {
        int payAmount(Employee emp){
            return emp.getMonth1Salary() + emp.getBonus();
        }
    }
}