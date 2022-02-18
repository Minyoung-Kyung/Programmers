import java.util.Arrays; // import java.util.*;

class Solution {
  public String solution(String[] participant, String[] completion) {
    // 배열 정렬
    Arrays.sort(participant);
    Arrays.sort(completion);

    int i = 0;
    for(i = 0 ;i < completion.length ;i++) {
      if(!participant[i].equals(completion[i])) { // participant 배열에서 completion 배열에 속하지 않는 선수 찾기
          return participant[i];
      }
    }

    return participant[i];
  }
}
