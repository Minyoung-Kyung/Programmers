class Solution {
    public long solution(int price, int money, int count) {
        // 데이터 타입 long으로 선언
        long answer = 0; // 부족한 금액
        long result = 0; // 최종 금액
        
        for(int i  = 1; i < count + 1; i++) { // 놀이기구를 count번 째 이용한다면 원래 이용료의 count배를 받기
            result += i * price;
        }
        
        if (result > money) { // 최종 금액이 자신이 가지고 있는 금액보다 많은 경우 부족한 금액 계산하기
            answer = result - money;
        }

        return answer;
    }
}
