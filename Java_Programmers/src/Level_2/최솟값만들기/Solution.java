package Level_2.최솟값만들기;

import java.util.Arrays;

public class Solution {
    public int solution(int []A, int []B)
    {
        int answer = 0;
        
        Arrays.sort(A);
        Arrays.sort(B);

        int bIndex = B.length-1;
        for (int a = 0; a < A.length; a++) {
          answer += A[a] * B[bIndex];
          bIndex -= 1;
        }
        return answer;
    }
}
