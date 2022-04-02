func solution(_ a:Int, _ b:Int) -> Int {
    var answer : Int = 0
    var start : Int = 0
    var end : Int = 0
    
    if (a == b) { // a와 b가 같은 경우는 둘 중 아무 수나 리턴
        answer = a
    } else { // 대소관계 정하기
        start = a > b ? b : a
        end = a > b ? a : b
    }
    
    for i in start...end {
        answer += i
    }
    
    return answer
}
