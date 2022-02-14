func solution(_ x:Int, _ n:Int) -> [Int] {
    var answer : [Int] = []
    var startNum : Int = x
    var addNum : Int = x
    
    for i in 1...n {
        answer.append(startNum)
        startNum += addNum
    }
    
    return answer
}
