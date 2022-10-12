package Level_1.평균구하기;

public class Solution {
    public double solution(int[] arr) {
        double answer = 0;
        
        for(int tempNum : arr) {
            answer += tempNum;
        }
        answer = answer / arr.length;

        return answer;
    }
}
