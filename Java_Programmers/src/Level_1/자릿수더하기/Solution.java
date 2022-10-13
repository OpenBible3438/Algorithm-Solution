package Level_1.자릿수더하기;

public class Solution {
    public int solution(int n) {
        int answer = 0;
        
        String tempStr = Integer.toString(n);
        for(int tempNum = 0; tempNum < tempStr.length(); tempNum++){
            answer += Integer.parseInt(Character.toString(tempStr.charAt(tempNum)));
        }
        return answer;
    }
}
