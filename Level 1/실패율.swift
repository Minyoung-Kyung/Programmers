// https://programmers.co.kr/learn/courses/30/lessons/42889
// 03.01 > 테스트 5, 9번 실패 (시간 초과), 정확성 : 92.6

import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var failure : [Int : Float] = [:] // [스테이지 번호 : 실패율]
    var total : Int = stages.count
    
    for i in 1...N {
        let count = stages.filter{$0 == i}.count
        failure[i] = Float(count) / Float(total)
        total -= count
    }
    
    // key는 오름차순, value는 내림차순으로 정렬 후 key 반환
    return failure.sorted(by: <).sorted(by: {$0.1 > $1.1}).map{$0.key}
}
