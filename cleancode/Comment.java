package cleancode;

public class Comment {
    /**
     * Default constructor.
     */
    protected AnnualDateRule(){ }
    /** The Day of the month. */
    private int dayOfMonth;
    /**
     * Returns the day of the month.
     * @return the day of the month.
     */
    public int getDayOfMonth(){
        return dayOfMonth;
    }
}