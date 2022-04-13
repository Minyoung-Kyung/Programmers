func solution(_ n:Int64) -> Int64 {
    var answer : Int64 = 0
    
    for i in 1...n {
        if n == i*i { // n이 양의 정수 x의 제곱이라면 x+1의 제곱을 리턴
            answer = (i+1)*(i+1)
            
            return answer
        } else { // n이 양의 정수 x의 제곱이 아니라면 -1을 리턴
            answer = -1
        }
    }
    
    return answer
}
