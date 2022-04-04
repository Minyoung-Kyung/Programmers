func solution(_ n:Int) -> String {
    var answer : String = ""
    
    for i in 0...n-1 { // i가 짝수(index 번호는 0부터 시작)이면 문자열에 "수"를 더하고, 홀수이면 "박"을 더하기
        answer += i%2 == 0 ? "수" : "박"
    }
    
    return answer
}
