package Level_2.JadenCase문자열만들기;

public class Solution {
    public String solution(String s) {
        String answer = "";

        s = s.toLowerCase();
        String[] arrStr = s.split(" ");
        for(int i=0; i<arrStr.length; i++) {
            if(arrStr[i].length() > 0) {
                answer += arrStr[i].substring(0, 1).toUpperCase();
                answer += arrStr[i].substring(1, arrStr[i].length()) + " ";
            } else {
                answer += " ";
            }
        }

        if(s.length() < answer.length()) {
            answer = answer.substring(0, answer.length()-1);
        }

        return answer;
    }
}
