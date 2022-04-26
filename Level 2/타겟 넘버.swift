import Foundation

var numbersCopy : [Int] = [] // numbers를 담을 배열
var targetCopy : Int = 0 // target을 담을 변수
var answer : Int = 0 // 최종적으로 반환할 방법의 수

// 재귀 함수
func dfs(_ depth: Int, _ sum: Int) {
    if depth == numbersCopy.count { // 깊이가 배열의 수와 같은 경우
        if sum == targetCopy { // 합이 target과 같은 경우
            answer += 1 // 방법의 수 증가시키기
        }
        return // 합이 target과 다르면 함수 종료
    }

    dfs(depth + 1, sum + numbersCopy[depth])
    dfs(depth + 1, sum - numbersCopy[depth])
}

func solution(_ numbers:[Int], _ target:Int) -> Int {
    numbersCopy = numbers
    targetCopy = target
    dfs(0, 0)

    return answer
}
