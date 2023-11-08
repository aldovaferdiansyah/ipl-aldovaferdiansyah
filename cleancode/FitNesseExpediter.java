package cleancode;

public class FitNesseExpediter implements ResponseSender{
    // BAD FORMATTING
    private    Socket          socket;
    private    InputStream     input;
    private    OutputStream    output;
    private    Request         request;
    private    Response        response;
    private    FitNesseContext context;
    protected  long            requestParsingTimeLimit;
    private    long            requestProgress;
    private    long            requestParsingDeadline;
    private    boolean         hasError;
}