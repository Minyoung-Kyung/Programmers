import java.util.PriorityQueue;

// peek() : Heap의 root 값을 확인 (root 제거 X)
// poll() : Heap의 root 값을 확인 (root 제거 O)

class Solution {
    public int solution(int[] scoville, int K) {
        int answer = 0;
        
        PriorityQueue<Integer> scovHeap = new PriorityQueue<>();
        
        for (int i = 0; i < scoville.length; i++) {
			scovHeap.add(scoville[i]);
		} 
        
        while(scovHeap.peek() < K) { // 스코빌 지수가 K 이상이 되면 섞기 종료
            
            if (scovHeap.size() < 2) return -1;
            
            int a = scovHeap.poll();
            int b = scovHeap.poll();
            
            scovHeap.add(a + 2 * b);

			answer++;
        }
        
        return answer;
    }
}
