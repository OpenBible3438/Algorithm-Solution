package Level_1.약수의합;

public class Solution {
    public int solution(int n) {
        int answer = 0;
        
        if(n == 0 || n == 1) {
            return n;
        }

        answer = 1 + n;

        for(int tempNum = 2; tempNum < n; tempNum++) {
            if(n % tempNum == 0) answer += tempNum;
        }

        return answer;
    }
}
