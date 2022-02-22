import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var ans = 0
    
    // 가장 작은 수와 가장 큰 수를 곱하기 위해 각 배열을 정렬
    var sortedA = A.sorted(by: <) // 오름차순
    var sortedB = B.sorted(by: >) // 내림차순
    
    for i in 0..<sortedA.count {
        ans += sortedA[i]*sortedB[i]
    }

    return ans
}
