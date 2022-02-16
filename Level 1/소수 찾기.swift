// https://programmers.co.kr/learn/courses/30/lessons/12921
// 에라토스테네스의 체

import Foundation

func solution(_ n:Int) -> Int {
    var count = 0
    var arr = Array.init(repeating: false, count: n + 1)

    for i in 2...n {
        if arr[i] == false {
            count += 1
            for j in stride(from: i, to: n + 1, by: i){ // i부터 n+1까지 i 간격으로 구간을 만드는 함수 stride()
                arr[j] = true
            }
        }
    }
    
    return count
}
