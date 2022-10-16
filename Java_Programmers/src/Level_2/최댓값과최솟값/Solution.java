package Level_2.최댓값과최솟값;

public class Solution {
    public String solution(String s) {
        String[] splitStr = s.split(" ");

        int max = Integer.parseInt(splitStr[0]);
        int min = Integer.parseInt(splitStr[0]);
        
        for(int tempNum = 0; tempNum < splitStr.length; tempNum++) {
            if(Integer.parseInt(splitStr[tempNum]) < min){
                min = Integer.parseInt(splitStr[tempNum]);
            } else if(Integer.parseInt(splitStr[tempNum]) > max) {
                max = Integer.parseInt(splitStr[tempNum]);
            }
        }
        
        return min + " " + max;
    }
}
