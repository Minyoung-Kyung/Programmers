// 플루이드 워셜
// n명의 선수가 있을 때, 각 선수는 n-1번의 승패를 알 수 있어야 순위를 확정 지을 수 있다.
class Solution {
    public int solution(int n, int[][] results) {
        int answer = 0;
        int[][] floyd = new int[n+1][n+1];
        
        // floyd 배열에 이기면 1, 지면 -1을 저장
        for (int i = 0; i < results.length; i++) {
            int A = results[i][0];
            int B = results[i][1];
            
            floyd[A][B] = 1; 
            floyd[B][A] = -1; 
        }
        
        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= n; j++) {
                for (int k = 1; k <= n; k++) {
                    if (floyd[i][k] == 1 && floyd[k][j] == 1) {
                        floyd[i][j] = 1;
                        floyd[j][i] = -1;
                    }
                    if (floyd[i][k] == -1 && floyd[k][j] == -1) {
                        floyd[i][j] = -1;
                        floyd[j][i] = 1;
                    }
                }
            }
        }
        
        // 순회 하면서 각 행에서 0이 아닌 값이 n-1개일 때 answer를 증가
        for (int i = 1; i <= n; i++) {
            int cnt = 0;

            for (int j = 1; j <= n; j++) {
                if (floyd[i][j] != 0) cnt++;
            }

            if (cnt == n - 1) answer++;
        }
        
        return answer;
    }
}
