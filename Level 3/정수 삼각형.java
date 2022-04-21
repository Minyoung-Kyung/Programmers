// 메모이제이션 : 반복문을 이용해 미리 계산한 값들을 저장한 후 다음 계산에 사용
class Solution {
    public int solution(int[][] triangle) {
        for(int i = triangle.length - 2; i > -1 ; i--) { // triangle.length - 2번째 줄 (가장 아랫줄)부터 시작
            for(int j = 0; j < triangle[i].length; j++) {
                triangle[i][j] += Math.max(triangle[i+1][j], triangle[i+1][j+1]); // traingle[i][j]의 자식 중 큰 수를 더하기
            }
        }
        return triangle[0][0];
    }
}
/* 입출력 예
 * i = 3
 * 7
 * 3 8
 * 8 1 0
 * 7 12 10 10
 *
 * i = 2
 * 7
 * 3 8
 * 20 13 10
 *
 * i = 1
 * 7
 * 23 21
 * 
 * i = 0
 * 30
 */
