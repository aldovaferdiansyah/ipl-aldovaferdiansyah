package cleancode;

public class Comment {
    // GOOD COMMENTS

    // 1. LEGAL COMMENTS
    // Copyright (c) 2011 by Osoco. All rights reserved.
    // Released under the terms of the GNU General Public License
    // Version 2 or later.

    // 2. INFORMATIVE COMMENTS
    // Returns an instance of the Responder being tested.
    protected abstract Responder responderInstance();
    // renaming teh function : responderBeingTested
    // format matched kk:mm:ss EEE, MMM dd, yyyy
    Pattern timeMatcher = Pattern.compile("\\d*:\\d*\\:d*\\:w*\\, \\w* \\d*, \\d*");

    // 3. CLARIFICATION
    assertTrue(a.compareTo(b) == -1); // a < b
    assertTrue(b.compareTo(a) == 1); // b > a
}