// 에라토스테네스의 체 : 소수를 판별하는 알고리즘, 소수들을 대량으로 빠르고 정확하게 구하는 방법
// 원리
// 1. 배열을 생성하여 초기화
// 2. 2부터 시작해서 특정 수의 배수에 해당하는 수를 모두 삭제 (지울 때 자기자신은 지우지 않고, 이미 지워진 수는 건너뛴다.)
// 3. 2부터 시작하여 남아있는 수를 모두 출력
import Foundation

func solution(_ n:Int) -> Int {
    var count = 0
    var arr = Array.init(repeating: false, count: n + 1) // 배열은 0부터 시작하기 때문에 n + 1개를 false로 초기화

    for i in 2...n { // 가장 작은 소수인 2부터 시작
        if arr[i] == false { // 소수인 경우
            count += 1
            for j in stride(from: i, to: n + 1, by: i){ // 소수인 i의 배수를 true로 바꿔준다. (i부터 n + 1까지 i씩)
                arr[j] = true
            }
        }
    }
    
    return count
}
