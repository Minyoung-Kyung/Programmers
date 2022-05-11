// 베스트앨범 : 노래는 고유 번호로 구분
// 노래를 수록하는 기준
// 1. 속한 노래가 많이 재생된 장르
// 2. 장르 내에서 많이 재생된 노래
// 3. 장르 내에서 재생 횟수 같은 경우 고유 번호가 낮은 노래를 먼저 수록

import java.util.*;

class Solution {
    static HashMap<String, Integer> hashmap;
    static ArrayList<Integer> list;
        
    public int[] solution(String[] genres, int[] plays) {
        int[] answer = {};
        list = new ArrayList<Integer>();
        hashmap = new HashMap<String, Integer>(); // <genres, plays>
        
        for (int i = 0; i < genres.length; i++) {
            if (hashmap.containsKey(genres[i])) { // 이미 hashmap에 담겨있는 장르인 경우
                int value = hashmap.get(genres[i]);
                hashmap.put(genres[i], value + plays[i]); // HashMap에 각 장르별 총 재생량 담아주기
            } else {
                hashmap.put(genres[i], plays[i]);
            }
        }
        
        // hashmap {classic: 1450, pop: 3100}
        
        while (true) { // 장르의 개수만큼 while문 반복
            // 1. 속한 노래가 많이 재생된 장르
            String genre = findGenre(genres);
            
            // 2. 장르 내에서 많이 재생된 노래 찾기
            findPlay(genre, genres, plays);
            hashmap.remove(genre);
            
            if (hashmap.size() == 0) break;
        }
        
		    answer = new int[list.size()];
        
		    for (int i = 0; i < list.size(); i++) {
		        answer[i] = list.get(i);
		    }
        
		    return answer;
    }
    
    // 반복적으로 map의 size()가 0이 될 때까지 genre를 하나씩 찾아주는 함수
    static String findGenre(String[] genres) {
		    int max = 0;
		    String genre = "";
        
		    for (int i = 0; i < genres.length; i++) {
		        if (hashmap.containsKey(genres[i])) {
		            if (max < hashmap.get(genres[i])) { // 해당 장르의 vale가 max 값보다 큰 경우
				            genre = genres[i];
				            max = hashmap.get(genres[i]); // max 값 변경
				        }
		        }
        }

        return genre;
    }
    
    // 재생 횟수가 많은 것부터 찾아내 list에 저장해주는 함수
    static void findPlay(String genre, String[] genres, int[] plays) {
        for (int j = 0; j < 2; j++) {
		        int max = 0;
		        int index = -1;
            
		        for (int i = 0; i < plays.length; i++) {
		            if (genre.equals(genres[i])) {
		                if (max < plays[i]) {
				                max = plays[i];
				                index = i; // 재생 횟수가 많은 장르의 index 번호를 저장
				            }
				        }
		        }
            
            if (index != -1) {
                int value = hashmap.get(genre) - plays[index]; // 재생된 횟수의 누적합에서 가장 많이 재생된 횟수를 빼기 
                hashmap.put(genre, value);
                plays[index] = -1;
                list.add(index);
            }
        }
    }
}
