import java.util.ArrayList;
import java.util.Collections;

class Solution {
    ArrayList<String> answer;
    boolean[] isVisited;
    
    public String[] solution(String[][] tickets) {
        answer = new ArrayList<String>();
        isVisited = new boolean[tickets.length]; // 항공권의 개수만큼 초기화
        int count = 0;
        
        dfs(count, "ICN", "ICN", tickets);
        
        // 모든 경로를 정렬
        Collections.sort(answer);
        
        return answer.get(0).split(" ");
    }
    
    // start : 출발지, route : 여행지
    public void dfs(int count, String start, String route, String[][] tickets) {
        if (count == tickets.length) { // 모든 공항을 방문한 경우
            answer.add(route);
            return;
        }
        
        for (int i = 0; i < tickets.length; i++) {
            // 1. 아직 방문하지 않은 경우
            // 2. 항공권의 출발지가 현재 출발지와 같은 경우
            if (!isVisited[i] && start.equals(tickets[i][0])) { // equals로 문자열 비교
                isVisited[i] = true;
                
                dfs(count + 1, tickets[i][1], route + " " + tickets[i][1], tickets);
                
                isVisited[i] = false;
            }
        }
    }
}
