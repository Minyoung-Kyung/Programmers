// 124 나라
// 1 % 3 = 1 => 1
// 2 % 3 = 2 => 2
// 3 % 3 = 0 => 4
// result의 index 번호 = n을 4로 나누었을 때의 나머지
class Solution {
    public String solution(int n) {
        String answer = "";
        String[] result = {"4", "1", "2"}; // 나머지가 0인 경우 나머지를 4로 교체
        
        while(n > 0) { // 일의 자리 수부터 채워주기
            answer = result[n % 3] + answer;
            n = (n-1) / 3;
        }
        
        return answer;
    }
}
