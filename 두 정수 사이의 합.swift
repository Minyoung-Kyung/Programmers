func solution(_ a:Int, _ b:Int) -> Int {
    var answer : Int = 0
    var start : Int = 0
    var end : Int = 0
    
    if (a == b) {
        answer = a
    } else {   
        start = a > b ? b : a
        end = a > b ? a : b
    }
    
    for i in start...end {
        answer += i
    }
    
    return answer
}
