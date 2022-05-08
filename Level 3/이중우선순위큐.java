import java.util.PriorityQueue;
import java.util.Comparator;

class Solution {
    public int[] solution(String[] operations) {
        int[] answer = {0, 0};
        PriorityQueue<Integer> maxQ = new PriorityQueue<>(Comparator.reverseOrder()); // 최댓값이 top, 내림차순으로 초기화
        PriorityQueue<Integer> minQ = new PriorityQueue<>(); // 최솟값이 top, 오름차순으로 초기화
        
        for(String opertation : operations) {
            String[] opt = opertation.split(" "); // 공백을 기준으로 문자열 나누기
            String optType = opt[0];
            
            if(optType.equals("D")) { // 문자열에 D가 포함되어 있는 경우
                if(!maxQ.isEmpty()) { // 큐가 비어있지 않은 경우
                    if(opt[1].equals("-1")) { // 큐에서 최솟값 삭제
                        int min = minQ.peek();
                        maxQ.remove(min);
                        minQ.remove(min);
                    } else { // 큐에서 최댓값 삭제
                        int max = maxQ.peek();
                        maxQ.remove(max);
                        minQ.remove(max);
                    }   
                } // 빈 큐에 데이터를 삽입, 삭제하라는 연산이 주어질 경우, 해당 연산은 무시
            } else { // 큐에 주어진 숫자 삽입, optType.equlas("I")
                String addNum = opt[1];
                int n = Integer.parseInt(addNum);
                
                maxQ.add(n);
                minQ.add(n);
            }
        }
        
        if (!maxQ.isEmpty()) { // 큐가 비어있지 않은 경우
            answer[0] = maxQ.peek(); // 최댓값 저장
            answer[1] = minQ.peek(); // 최솟값 저장
        }
        
        return answer;
    }
}
