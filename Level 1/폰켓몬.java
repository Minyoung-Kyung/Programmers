import java.util.*;

class Solution {
    public int solution(int[] nums) {
        int answer = 0;
        
        // nums에 존재하는 숫자 중복 제거
        ArrayList<Integer> arr = new ArrayList<Integer>();
        for(int i=0; i<nums.length; i++) {
            if(!arr.contains(nums[i])) { // 배열에 해당 숫자가 없을 경우
                arr.add(nums[i]); // 숫자를 배열에 넣기
                answer++; // 중복되지 않는 숫자 count
            }
        }
        
        int maxNum = nums.length/2; // N/2마리의 폰켓몬 개수
        
        // 가장 많은 종류의 폰켓몬을 선택하는 방법 찾기
        // 중복되지 않는 숫자의 개수가 N/2마리의 폰켓몬보다 큰 경우 answer 반환
        return maxNum < answer ? maxNum : answer;
    }
}
