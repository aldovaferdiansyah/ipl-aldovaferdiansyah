import java.util.Vector;
import java.util.Enumeration;

public class CourseRecord {
    private Student student;
    private Vector assignment;
    CourseRecord(){
        assignment = new Vector();
    }
    public Student getStudent(){
        return student;
    }
    public void setStudent(Student s){
        student = s;
    }
    public void addAssignment(Assignment a){
        assignment.addElement(a);
    }
    public Enumeration getAssignment(){
        return assignment.elements();
    }
}