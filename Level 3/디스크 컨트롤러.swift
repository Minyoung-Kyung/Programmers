func solution(_ jobs : [[Int]]) -> Int {
    let count = jobs.count
    
    // jobs를 소요시간으로 정렬
    var jobs = jobs.sorted(by: {$0[0] == $1[0] ? $0[1] < $1[1] : $0[0] < $1[0]})
    
    let first = jobs.removeFirst()
    var last = first[0] + first[1]
    var sum = first[1]
    
    // 소요시간으로 정렬된 jobs를 요청시간으로 정렬
    jobs.sort(by: {$0[1] == $1[1] ? $0[0] < $1[0] : $0[1] < $1[1]})
    
    while jobs.count != 0 {
        var removeIndex = -1
        var next = [Int]()
        for i in 0..<jobs.count { // 정렬된 jobs의 길이만큼 순회
            next = jobs[i]
            
            if next[0] <= last { // 정렬된 jobs의 요청시간이 현재 시간보다 작거나 같은 경우
                removeIndex = i // i번째를 삭제
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
    
    // 전체 길이에서 jobs의 수만큼 나눈 것을 반환
    return sum / count
}
