class Solution {
    public int solution(int n) {
        int answer = 0;
        boolean isPrime;
        
        for(int i = 2; i <= n; i++) {
            isPrime = true; // isPrime은 i가 증가할 때마다 true로 초기화
            
            for(int j = 2; j <= Math.sqrt(i); j++) {
                if(i % j == 0) { // 소수가 아닌 경우 반복문 종료
                    isPrime = false;
                    break;
                } 
            }
            
            if(isPrime) { // 소수인 경우
                answer++;
            }
        }
        
        return answer;
    }
}
