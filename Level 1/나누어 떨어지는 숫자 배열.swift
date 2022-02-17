func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var answer : [Int] = []
    
    for i in 0..<arr.count {
        if arr[i] % divisor == 0 {
            answer.append(arr[i])
        }
    }
    
    if answer.count == 0 {
        answer.append(-1)
    }
    
    return answer.sorted()
}
