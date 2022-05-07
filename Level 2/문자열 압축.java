class Solution {
    public int solution(String s) {
        int answer = s.length(); // 아무리 길어도 s문자열 길이보다 짧다.
        
        // 입력되는 문자열 길이의 절반까지만 반복
        for (int i = 1; i <= s.length()/2 ; i++) {
            int pos = 0; // 연산을 수행하는 위치
            int len = s.length(); // 최초 길이로 초기화 후 압축되는 길이로 줄이기
            
            for ( ; pos + i <= s.length(); ) {
                String unit = s.substring(pos, pos + i); // 원하는 문자열 단위
                pos += i; // 위치를 i만큼 진행하여 unit 이후에 연속된 문자가 있는지 확인
                
                int cnt = 0;
                for ( ; pos + i <= s.length(); ) {
                    if (unit.equals(s.substring(pos, pos + i))) {
                        ++cnt;
                        pos += i;
                    } else { // 다른 경우 종료 후 새로 기준 만들어 반복
                        break;
                    }
                }
                
                if (cnt > 0) { // 연속된 문자가 하나라도 존재하는 경우
                    len -= i * cnt;
                    
                    // n자리 숫자인 경우, len += n;
                    // 입력 최대는 1000
                    if (cnt < 9) len += 1;
                    else if (cnt < 99) len += 2;
                    else if (cnt < 999) len += 3;
                    else len += 4;
                }
            }
            
            answer = Math.min(answer, len); // 원래 가지고 있던 것보다 더 짧은 문자면 answer 변경
        }
        return answer;
    }
}
