import Foundation

// nonezeroBitCount : 2진수로 변환한 후 0이 아닌 1의 개수만 반환는 내장 함수
// n의 다음 큰 숫자의 조건
// 1. n의 다음 큰 숫자는 n보다 큰 자연수
// 2. n의 다음 큰 숫자와 n은 2진수로 변환했을 때 1의 개수와 동일
// 3. n의 다음 큰 숫자는 조건 1, 2를 만족하는 수 중 가장 작은 수
func solution(_ n:Int) -> Int {
    var answer : Int = n + 1 // 조건 1
 
    while true {
        if n.nonzeroBitCount == answer.nonzeroBitCount { // 조건 2
            break;
        }
        answer += 1
    }
 
    return answer
}
