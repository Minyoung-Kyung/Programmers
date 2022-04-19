import java.util.Arrays;

class Solution {
    public int solution(int[] citations) {
        int answer = 0;
        Arrays.sort(citations); // 오름차순 정렬, [0, 1, 3, 5, 6]
    
        for(int i = 0; i < citations.length; i++) {
            int h = citations.length - i; // h회 이상 인용된 논문의 개수
            
            if (h <= citations[i]) { // citations[i]편의 논문이 h회 이상 인용된 경우
                answer = h;
                break;
            }
        }
    
        return answer;
    }
}
// [0, 1, 3, 5, 6]
// [5(false), 4(false), 3(true), 2(true), 1(true)]
// h 중 가장 큰 값이 H-Index
