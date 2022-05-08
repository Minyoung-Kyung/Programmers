// 소수 찾기 : 모든 숫자 조합을 만들고, 그 중 소수의 개수 반환
// 에라토스테네스의 체 : 한 숫자가 소수인지 판단하기 위해서는 그 수에 루트를 씌운 값까지만 확인하면 된다.
// 재귀를 활용한 Solution
// 1. 숫자 조합 : 생성 가능한 모든 숫자 조합을 재귀 함수를 통해 하나씩 만든다.
// 2. Set : set의 개념을 활용하여 중복되는 조합을 제거한다.
// 3. 소수인지 판단 : 지금 만들어진 숫자가 소수인지 판단한다.

import java.util.HashSet;
import java.util.Iterator; // hasNext, next, remove

class Solution {
    HashSet<Integer> numberSet = new HashSet<>();
    
    public boolean isPrime(int num) {
        // 1. 0과 1은 소수가 아니다.
        if(num == 0 || num == 1) {
            return false;
        }
        
        // 2. 에라토스테네스의 체의 limit을 계산한다.
        int limit = (int)Math.sqrt(num);
        
        // 3. 에라토스테네스의 체에 따라 limit까지만 배수 여부를 확인한다.
        for (int i = 2; i <= limit; i++) {
            if (num % i == 0)
                return false;
        }
        
        return true;
    }
    
    // comb : 여태까지 조합한 숫자
    // others : 조합하지 않은 남아있는 숫자
    public void recursive(String comb, String others) {
        // 1. 현재 조합을 set에 추가한다.
        // 중복이 있다면 알아서 누락된다.
        if(!comb.equals("")) // 빈 문자열이 아닌 경우
            numberSet.add(Integer.valueOf(comb));
        
        // 2. 남은 숫자 중 한개를 더해 새로운 조합을 만든다.
        for(int i = 0; i < others.length(); i++) {
            recursive(comb + others.charAt(i), others.substring(0, i) + others.substring(i + 1));
        }
    }
    
    public int solution(String numbers) {
        int count = 0;
        
        // 1. 모든 조합의 숫자를 만든다.
        recursive("", numbers);
        
        // 2. 소수의 개수만 센다.
        // Iterator(반복자) : 자료구조와 관련 없이 항상 쓸 수 있다.
        Iterator<Integer> it = numberSet.iterator();
        while(it.hasNext()) {
            int number = it.next();
            if(isPrime(number)) // 소수인 경우
                count++;
        }
        
        // 3. 소수의 개수를 반환한다.
        return count;
    }
}
