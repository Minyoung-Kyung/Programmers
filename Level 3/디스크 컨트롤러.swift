// 알고리즘
// 1. 처음에는 가장 먼저 도착한 작업을 수행한다.
// 2. 작업을 수행하는 동안 도착한 작업들을 별도의 작업 큐에 모은다.
// 3. 작업 큐에 도착한 작업들 중 수행시간이 가장 짧은 작업을 꺼내 수행한다.
// 모든 작업을 처리할 때까지 2, 3번 과정을 반복한다.

func solution(_ jobs : [[Int]]) -> Int {
    let count = jobs.count
    var jobs = jobs.sorted(by: {$0[0] == $1[0] ? $0[1] < $1[1] : $0[0] < $1[0]}) // 오름차순 정렬
    
    let first = jobs.removeFirst()
    var last = first[0] + first[1]
    var sum = first[1]
    jobs.sort(by: {$0[1] == $1[1] ? $0[0] < $1[0] : $0[1] < $1[1]})
    
    while jobs.count != 0 {
        var removeIndex = -1
        var next = [Int]()
        for i in 0..<jobs.count {
            next = jobs[i]
            if next[0] <= last {
                removeIndex = i
                break
            }
        }
        
        if removeIndex == -1 {
            next = jobs.removeFirst()
        } else {
            next = jobs.remove(at: removeIndex)
        }
        
        if next[0] > last {
            last = next[0]
        }
        
        last += next[1]
        sum += (last - next[0])
    }
    
    return sum / count
}
