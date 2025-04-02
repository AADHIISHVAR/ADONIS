import java.util.regex.*;
import java.util.*;

public class Solution {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        ArrayList<String> results = new ArrayList<>();
        
        // Pattern for valid IP addresses (0-255 for each octet)
        String regex = "^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$";
        Pattern pattern = Pattern.compile(regex);
        
        while(scan.hasNextLine()) {
            String input = scan.nextLine();
            Matcher matcher = pattern.matcher(input);
            
            if (matcher.matches()) {
                results.add("true");
            } else {
                results.add("false");
            }
        }
        
        for(String result : results) {
            System.out.println(result);
        }
    }
}
