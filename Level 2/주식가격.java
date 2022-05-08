// 입출력 예
// prices : [1, 2, 3, 2, 3]
// return : [4, 3, 1, 1, 0]

// 1번 주식은 5번까지 4초간 가격 유지
// 2번 주식은 5번까지 3초간 가격 유지
// 3번 주식은 4번에서 떨어졌다가 5번까지 1초간 가격 유지
// 4번 주식은 5번까지 1초간 가격 유지
// 5번 주식은 0초간 가격 유지

class Solution {
    public int[] solution(int[] prices) {
        int[] answer = new int[prices.length]; // prices의 길이만큼 0으로 초기화
        
        for(int i = 0; i < prices.length; i++) {
            for(int j = i + 1; j < prices.length; j++) {
                answer[i]++; // 떨어지지 않은 기간 1초씩 증가시키기
                if(prices[i] > prices[j]) { // i초 시점보다 가격이 떨어진 경우 break
                    break;
                }
            }
        }
      
        // 떨어지기 직전까지 몇 초간 주식을 유지했는지를 저장한 배열을 반환
        return answer;
    }
}
