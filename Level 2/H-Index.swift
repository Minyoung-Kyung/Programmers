import Foundation

func solution(_ citations:[Int]) -> Int {
    let sorted = citations.sorted(by: >) // 오름차순 정렬
    
    for i in 0..<citations.count {
        if i >= sorted[i] {
            return i
        }
    }
    
    return sorted.count // '테스트 케이스 9' 실패를 해결한 코드, citations 배열의 수가 너무 작은 경우
}
