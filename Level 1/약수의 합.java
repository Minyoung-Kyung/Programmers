class Solution {
    public int solution(int n) {
        int answer = 0; // 약수의 합
        
        for(int i = 1; i < n + 1; i++) {
            if (n % i == 0) { // 나누었을 때 나머지가 0이면 약수이므로 answer에 약수를 더하기
                answer += i;
            }
        }
        
        return answer;
    }
}
