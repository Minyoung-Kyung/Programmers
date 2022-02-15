func solution(_ n:Int64) -> Int64 {
    var answer : Int64 = 0
    
    for i in 1...n {
        if n == i*i {
            answer = (i+1)*(i+1)
            
            return answer
        } else {
            answer = -1
        }
    }
    
    return answer
}
