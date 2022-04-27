import Foundation

var numbersCopy : [Int] = [] // numbers를 담을 배열
var targetCopy : Int = 0 // target을 담을 변수
var answer : Int = 0 // 최종적으로 반환할 방법의 수

// 재귀 함수
// index : dfs에서 더하거나 빼야 할 숫자가 존재하는 index
// sum : 누적 합
func dfs(_ index: Int, _ sum: Int) {
    // 탈출 조건
    if index == numbersCopy.count {
        if sum == targetCopy { // 합이 target과 같은 경우
            answer += 1 // 방법의 수 증가시키기
        }
        return
    }

    // 수행 동작
    // 만들어진 누적 합에 현재 index에 있는 숫자를 더하거나 빼 다음 dfs를 수행
    dfs(index + 1, sum + numbersCopy[index])
    dfs(index + 1, sum - numbersCopy[index])
}

func solution(_ numbers:[Int], _ target:Int) -> Int {
    numbersCopy = numbers
    targetCopy = target
    dfs(0, 0) // 초기화, dfs 함수 내에서 모든 동작을 수행

    return answer
}
