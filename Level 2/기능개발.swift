import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var work : [Int] = [] // 남은 작업 일을 담는 배열
    var answer : [Int] = []
    
    for i in 0..<progresses.count { // 프로세스당 남은 작업일을 계산해 배열에 담기
        work.append((100 - progresses[i] - 1) / speeds[i] + 1) // (100% - 작업 진도 - 1) / 개발 속도, 내림을 방지하기 위해 각각 -1 +1
    }
    
    while (!work.isEmpty) {
        let delay = work.first!
        var count = 0 // 배포 개수
        
        while (!work.isEmpty && work.first! <= delay) { // 배열의 맨 첫번째 값보다 큰 수를 만날 때까지 반복
            count += 1
            work.removeFirst() // 배열에서 제거
        }
        
        answer.append(count)
    }
    
    return answer
}
