import java.util.PriorityQueue;
import java.util.Arrays;
import java.util.Queue;
import java.util.LinkedList;

class Solution {
    public boolean isChanged(String str, String word) {
        int count = 0;
        int[] strArr = new int[str.length()];
        int[] wordArr = new int[word.length()];
        
        // 문자열을 한 글자씩 배열의 원소로 저장
        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) != word.charAt(i)) { // 글자가 다른 경우 count 증가
                count++;
            }
        }
        
        return count == 1 ? true : false;
    }
    
    // BFS
    public int solution(String begin, String target, String[] words) {
        Queue<Node> queue = new LinkedList<>();
        queue.offer(new Node(begin, 0)); // 변환을 시작할 단어를 큐에 넣기, 아직 0단계
        
        boolean[] isVisited = new boolean[words.length];
        
        while(!queue.isEmpty()) {
            Node node = queue.poll();
            
            if (node.str.equals(target)) return node.count;
            
            for (int i = 0; i < words.length; i++) {
                if (isVisited[i]) continue;
                
                if (isChanged(node.str, words[i])) {
                    queue.offer(new Node(words[i], node.count+1)); // words[i] 변환까지 몇 단계를 거쳤는지 1을 더해 노드에 저장
                    isVisited[i] = true; // 방문 처리
                }
            }
        }
        
        return 0; // target이 words 배열에 포함되어있지 않은 경우
    }
    
    public static class Node {
        String str;
        int count;
        
        Node(String str, int count) {
            this.str = str;
            this.count = count;
        }
    }
}
