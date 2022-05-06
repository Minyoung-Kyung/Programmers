import java.util.*;

class Solution {
    static ArrayList<ArrayList<Integer>> graph = new ArrayList<>();
    static boolean[] visited;
    
    public int solution(int n, int[][] edge) {
        visited = new boolean[n + 1];
        int answer = 0;

        for (int i = 0; i <= n; i++) {
            graph.add(i, new ArrayList<>());
        }

        for (int i = 0; i < edge.length; i++) { // 양방향 추가
            graph.get(edge[i][0]).add(edge[i][1]);
            graph.get(edge[i][1]).add(edge[i][0]);
        }
        
        answer = bfs();
        return answer;
    }
    
    public static int bfs() {
        Queue<Integer> queue = new LinkedList<>(); // 방문한 노드의 깊이를 저장할 배열
        queue.add(1); // 1번 노드부터 탐색
        visited[1] = true; // 1번 노드 방문 처리
        
        int cnt = 0;
        while (true) {
            Queue<Integer> temp = new LinkedList<>();

            while (!queue.isEmpty()) {
                int now = queue.poll();
                for (int adj : graph.get(now)) {
                    if (!visited[adj]) {
                        temp.add(adj);
                        visited[adj] = true;
                    }
                }
            }

            if (temp.isEmpty()) {
                break;
            }
            queue.addAll(temp);
            cnt = temp.size(); // 가장 먼 노드의 개수
        }

        return cnt;
    }
}
