import java.util.*;

class Solution {
    // bridge_length : 다리에 올라갈 수 있는 최대 트럭의 수
    // weight : 다리가 견딜 수 있는 최대 무게
    // truck_weights : 트럭의 무게를 담은 배열
    public int solution(int bridge_length, int weight, int[] truck_weights) {
        Queue<Integer> bridgeQueue = new LinkedList<>();
        boolean[] isVisited = new boolean[truck_weights.length];
        int time = 0; // 트럭이 다리를 건너는데 걸리는 시간
        int sum = 0; // 현재 다리 위 트럭 무게의 합
        
        for (int i = 0; i < truck_weights.length; i++) {
            int truck = truck_weights[i];
            
            while(true) {
                if (bridgeQueue.isEmpty()) { // 다리가 비어있는 경우
                    bridgeQueue.add(truck);
                    sum += truck;
                    time++;
                    break;
                } else if (bridgeQueue.size() == bridge_length) {
                    sum -= bridgeQueue.poll();
                } else {
                    // weight 값을 넘지 않는 경우 새로운 트럭이 다리를 건너도록 하기 
                    if(sum + truck <= weight) {
                        bridgeQueue.add(truck);
                        sum += truck;
                        time++;
                        break;
                    } else { // 넘는다면 0을 넣어 이미 큐에 있는 트럭이 다리를 건너게 만들기
                        bridgeQueue.add(0);
                        time++;
                    }
                }
            }
        }
        
        // 걸린 시간 + 마지막 트럭의 통과 시간 (다리의 길이)
        return time + bridge_length;
    }
}
