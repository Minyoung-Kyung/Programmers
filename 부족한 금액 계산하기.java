class Solution {
    public long solution(int price, int money, int count) {
        long answer = 0;
        long result = 0; // result price
        
        for(int i  = 1; i < count+1; i++) {
            result += i * price;
        }
        
        if (result > money) {   
            answer = result - money;    
        }

        return answer;
    }
}

// 1. answer, result 의 변수형 long으로 선언하기
// 2. result > money 조건문 넣어주기
