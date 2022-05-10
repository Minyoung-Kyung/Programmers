// 섞은 음식의 스코빌 지수 = 가장 맵지 않은 음식의 스코빌 지수 + (두 번째로 맵지 않은 음식의 스코빌 지수 * 2)
// peek() : Heap의 root 값을 확인 (root 제거 X)
// poll() : Heap의 root 값을 확인 (root 제거 O)

import java.util.PriorityQueue;

class Solution {
    public int solution(int[] scoville, int K) {
        int answer = 0;
        PriorityQueue<Integer> scovHeap = new PriorityQueue<>();
        
        for(int i = 0; i < scoville.length; i++) {
	    scovHeap.add(scoville[i]);
	}
        
        while(scovHeap.peek() < K) { // 스코빌 지수가 K 이상이 되면 섞기 종료
            if (scovHeap.size() < 2) { // 모든 음식의 스코빌 지수를 K 이상으로 만들 수 없는 경우에는 -1을 return
                return -1;
            }
            
            int a = scovHeap.poll();
            int b = scovHeap.poll();
            
            scovHeap.add(a + 2 * b);
	    answer++;
        }
        
        return answer;
    }
}
