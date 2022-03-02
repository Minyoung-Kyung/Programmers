// 03.01 > 테스트 5, 22번 실패 (시간 초과), 정확성 : 92.6

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

// 03.02 > 통과, 정확성 : 100.0

import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var nonClearArr = Array(repeating: 0, count: N+1) // 클리어하지 못한 플레이어의 수를 담는 배열
    var failure : [Int : Float] = [:] // [스테이지 번호 : 실패율]
    var total : Int = stages.count
    
    for stage in stages {
        nonClearArr[stage-1] += 1 
    }
    
    for i in 1...N {
        if nonClearArr[i-1] == 0 {
            failure[i] = 0
        } else {  
            failure[i] = Float(nonClearArr[i-1]) / Float(total)    
        }
        total -= nonClearArr[i-1]
    }
    
    // key는 오름차순, value는 내림차순으로 정렬 후 key 반환
    return failure.sorted(by: <).sorted(by: {$0.1 > $1.1}).map{$0.key}
}
