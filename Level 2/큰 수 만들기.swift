import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var array : [Int] = Array(number).map{Int(String($0))!} // 문자열을 배열로 변환하기
    var answer : [Int] = []
    var removeCnt = 0
    
    for i in 0..<array.count { // 테스트 12번을 제외하고 모두 통과
        while (answer.count > 0 && answer.last! < array[i] && removeCnt < k) { // 새로 추가된 수보다 작은 수 제거하기
            answer.removeLast()
            removeCnt += 1 // 몇 번 제거했는지 count
            
            if removeCnt == k { // k번 제거한 경우 break
                break
            }
        }
        
        answer.append(array[i])
    }
    
    if removeCnt == 0 { // 테스트 12번 : 가장 작은 수가 뒤에 있어 하나도 제거되지 않은 경우
        for i in 1...k { // k번 제거
            answer.removeLast()
        }
    }
    
    return answer.map{String($0)}.joined(separator: "") // 배열을 문자열로 변환하기
}
