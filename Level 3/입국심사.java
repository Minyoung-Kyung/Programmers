// 이분탐색시 left, right, mid 초기화
// 입국심사 : 시간을 이분 탐색
// 입국심사를 하는 데 걸리는 최대시간을 구해 0 ~ 최대시간까지 조건에 맞는 시간을 이분탐색

import java.util.*;

class Solution {
    public long solution(int n, int[] times) {
        Arrays.sort(times); // times를 정렬
        
        return BinarySearch(times, n, times[times.length - 1]);
    }
    
    public long BinarySearch(int[] times, int n, long max) {
        long left = 0;
        long right = max * n; // 가장 오랜 시간이 걸리는 입국심사 * 사람 수
        long mid = 0;
        
        long count = 0;
        long answer = right;
        
        while (left <= right) {
            count = 0;
            mid = (left + right) / 2;
            
            for (int time : times) {
                count += mid / time;
            }
            
            if (count < n) {
                left = mid + 1;
            } else {
                if (mid < answer) {
                    answer = mid;
                }
                right = mid - 1;
            }
        }
        
        return answer;
    }
}
