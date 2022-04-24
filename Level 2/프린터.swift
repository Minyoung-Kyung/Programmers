import Foundation

// location번 문서가 몇 번째로 인쇄되는지 반환
func solution(_ priorities:[Int], _ location:Int) -> Int {
    var priorityArr : [Int] = priorities // 중요도가 순서대로 담긴 배열
    var requestIndex : Int = location // 인쇄를 요청한 문서의 index
    var count : Int = 0 // 인쇄된 문서의 개수
    var isDone : Bool = false
    
    while (!isDone) {
        var isBiggest : Bool = true
        
        for i in 1..<priorityArr.count {
            if (priorityArr[i] > priorities[0]) { // 대기열의 첫 번째 문서가 가장 우선순위가 높지 않은 경우
                let temp = priorityArr.remove(at: 0) // 해당 문서를 맨 뒤로 보내기
                priorityArr.append(temp)

                if requestIndex == 0 { // 요청한 문서가 대기열 맨 뒤로 이동된 경우
                    requestIndex = priorityArr.count - 1
                } else { // 요청한 문서가 대기열에서 한 칸 앞당겨진 경우
                    requestIndex -= 1
                }
                isBiggest = false
                break
            }
        }
        
        if(isBiggest) { // 대기열의 첫 번째 문서가 우선순위가 가장 높은 경우
            if(requestIndex == 0) { // 요청한 문서가 직전에 삭제된 경우
                isDone = true // 인쇄 완료
            }
            count += 1
            priorityArr.remove(at: 0)
            requestIndex -= 1
        }
    }
    
    return count
}
