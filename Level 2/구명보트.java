import java.util.*;

class Solution {
    public int solution(int[] people, int limit) {
        int answer = 0;
        int minIndex = 0; // 가장 가벼운 사람의 index
        
        Arrays.sort(people); // 사람들의 몸무게를 오름차순으로 정렬
        
        for (int i = people.length-1 ; i >= minIndex; i--) {
            if (people[i] + people[minIndex] <= limit) { // 몸무게 최대와 최소의 합이 제한보다 작거나 같은 경우
                answer++; // 함께 태워 구출하기
                minIndex++; // 그 다음으로 몸무게가 적게 나가는 사람으로 index 변경하기
            } else { // 가장 무거운 사람부터 구출하기
                answer++;
            }
        }
        
        return answer;
    }
}
