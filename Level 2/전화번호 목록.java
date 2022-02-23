import java.util.*; // Arrays.sort() 메서드 사용을 위해 import

class Solution {
    public boolean solution(String[] phone_book) {
        Arrays.sort(phone_book); // 전화번호 목록 정렬
        
        for (int i = 0; i < phone_book.length - 1; i++) {
            if(phone_book[i+1].startsWith(phone_book[i])) // String 클래스의 startsWith() 메서드 사용해 (i+1) 번째 번호가 i 번째 번호로 시작하는지 확인
                return false;
        }
        
        return true;
    }
}
