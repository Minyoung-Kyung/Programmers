// maps
// 0 : 벽이 있는 자리
// 1 : 벽이 없는 자리

import java.util.LinkedList;
import java.util.Queue;

class Solution {
    public int solution(int[][] maps) {
        int answer = 0;
        
        int[] dx = {-1, 0, 1, 0};
        int[] dy = {0, -1, 0, 1};
        
        Queue<int[]> queue = new LinkedList<int[]>();
        queue.add(new int[]{0, 0});
        
        int[][] isVisited = new int[maps.length][maps[0].length];
        isVisited[0][0] = 1;
        
        // BFS
        while(!queue.isEmpty()) {
            int[] current = queue.remove();
            int cX = current[0];
            int cY = current[1];
            
            for(int i = 0; i < 4; i++){
                int nX = cX + dx[i];
                int nY = cY + dy[i];
                
                if(nX < 0 || nX > maps.length - 1 || nY < 0 || nY > maps[0].length - 1)
                    continue;
                
                if(isVisited[nX][nY] == 0 && maps[nX][nY] == 1){
                    isVisited[nX][nY] = isVisited[cX][cY] + 1;
                    queue.add(new int[]{nX, nY});
                }
            }
        }
        
        answer = isVisited[maps.length - 1][maps[0].length - 1];
        
        return answer == 0 ? -1 : answer;
    }
}
