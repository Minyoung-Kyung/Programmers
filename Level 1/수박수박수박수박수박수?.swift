func solution(_ n:Int) -> String {
    var answer : String = ""
    
    for i in 0...n-1 {
        answer += i%2 == 0 ? "수" : "박"
    }
    
    return answer
}
