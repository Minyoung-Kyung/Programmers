import Foundation

// location번 문서가 몇 번째로 인쇄되는지 반환
func solution(_ priorities:[Int], _ location:Int) -> Int {
    var priorityArr : [Int] = priorities // 중요도가 순서대로 담긴 배열
    var requestIndex : Int = location // 인쇄를 요청한 문서의 index
    var count : Int = 0 // 인쇄된 문서의 개수
    var isDone : Bool = false
    
    while (!isDone) {
        if (priorityArr.first! == priorityArr.max()) { // 대기열 첫 번째 문서의 우선순위가 가장 높은 경우
            priorityArr.removeFirst()
            count += 1
            
            if (requestIndex == 0) { // 요청한 문서 인쇄 완료
                isDone = true // while문 종료
            } else { // 요청한 문서를 대기열에서 한 칸 앞으로 이동
                requestIndex -= 1
            }
        } else { // 대기열 첫 번째 문서의 우선순위가 가장 높지 않은 경우
            let temp = priorityArr.removeFirst()
            priorityArr.append(temp) // 첫 번째 문서를 맨 뒤로 이동
            
            if (requestIndex == 0) { // 요청한 문서를 대기열 맨 뒤로 이동
                requestIndex = priorityArr.count - 1
            } else { // 요청한 문서를 대기열에서 한 칸 앞으로 이동
                requestIndex -= 1
            }
        }
    }
    
    return count
}
