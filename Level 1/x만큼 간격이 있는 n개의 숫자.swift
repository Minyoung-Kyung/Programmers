func solution(_ x:Int, _ n:Int) -> [Int] {
    var answer : [Int] = []
    var startNum : Int = x // 시작하는 숫자
    var addNum : Int = x // 증가하는 숫자
    
    for i in 1...n {
        answer.append(startNum)
        startNum += addNum // x씩 증가시키며 배열에 담기
    }
    
    return answer
}
