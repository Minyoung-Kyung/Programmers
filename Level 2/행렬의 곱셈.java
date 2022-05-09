// 행렬
// index * j 크기의 A행렬
// j * i 크기의 B행렬
// 두 행렬의 곱은 index * i 크기의 행렬로 반환

class Solution {
    public int[][] solution(int[][] arr1, int[][] arr2) {
        // 첫번째 행렬의 행 * 두번째 행렬의 열
        int[][] answer = new int[arr1.length][arr2[0].length]; // 0으로 초기화
        
        for(int index = 0; index < arr1.length; index++) {
            for(int i = 0; i < arr2[0].length; i++) {
                for(int j = 0; j < arr1[0].length; j++) {
                    answer[index][i] += arr1[index][j] * arr2[j][i];
                }
            }
        }
        
        return answer;
    }
}
