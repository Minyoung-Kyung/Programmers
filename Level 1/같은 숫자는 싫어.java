import java.util.*;

public class Solution {
    public ArrayList<Integer> solution(int []arr) {
        ArrayList<Integer> answer = new ArrayList<Integer>();
        int element = 10; // arr의 원소는 0보다 크거나 같고 9보다 작거나 같은 정수
        
        for (int i = 0; i < arr.length; i++) {
            if(element != arr[i]) { // 연속된 숫자가 아닌 경우
                answer.add(arr[i]); // ArrayList에 추가
                element = arr[i];
            }
        }

        return answer;
    }
}
