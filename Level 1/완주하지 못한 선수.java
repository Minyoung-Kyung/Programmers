import java.util.Arrays; // import java.util.*;

class Solution {
  public String solution(String[] participant, String[] completion) {
    // 배열 정렬
    Arrays.sort(participant);
    Arrays.sort(completion);

    for(int i = 0; i < completion.length; i++) {
      if(!participant[i].equals(completion[i])) { // participant 배열에서 completion 배열에 속하지 않는 선수 찾기
          return participant[i];
      }
    }

    // 마지막 주자가 완주하지 못한 경우
    return participant[participant.length - 1];
  }
}
