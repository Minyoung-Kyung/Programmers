class Solution {
    // 네트워크 : 컴퓨터 상호 간에 정보를 교환할 수 있도록 연결된 형태
    // n : 컴퓨터의 개수, computers : 연결 정보
    public int solution(int n, int[][] computers) {
        int answer = 0;
        boolean[] isVisited = new boolean[n]; // 컴퓨터의 개수만큼 false로 초기화
        
        for (int i = 0; i < n; i++) {
            if (!isVisited[i]) { // false이면 깊이 우선 탐색
                answer++;
                dfs(i, isVisited, computers);
           }
        }
        
        return answer;
    }
    
    // 그래프 탐색, 재귀 호출
    public void dfs(int i, boolean[] isVisited, int[][] computers) {
        isVisited[i] = true; // 방문 처리
        
        for (int j = 0; j < computers.length; j++) {
            // 1. 자기 자신이 아닌 경우
            // 2. computers의 배열 값이 1인 경우
            // 3. 방문 하지 않은 노드인 경우
            if (i != j && computers[i][j] == 1 && isVisited[j] == false) {
                dfs(j, isVisited, computers);
            }
        }
    }
}
