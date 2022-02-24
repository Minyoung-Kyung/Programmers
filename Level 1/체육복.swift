import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var now = [Int](repeating : 1, count : n) // 학생의 수만큼 체육복 1개로 초기화한 배열 생성
    
    let sortedLost = lost.sorted()
    let sortedReserve = reserve.sorted()
    var answer = 0
    
    for l in lost { // 도난당한 학생 체육복 0개
        now[l-1] -= 1
    }
    
    for r in reserve { // 여분을 가져온 학생 체육복 2개
        now[r-1] += 1
    }
    
    var count = 0 // 체육복을 빌리지 못한 학생 수를 담는 변수
    for j in 0..<n {
        if now[j] == 0 { // 도난당한 학생인 경우
            if (j > 0 && now[j-1] > 1){ // 앞 학생에게 빌리기
                now[j] = 1
                now[j-1] = 1
            } else if (j < n-1 && now[j+1] > 1){ // 뒤 학생에게 빌리기
                now[j] = 1
                now[j+1] = 1
            } else { // 체육복을 빌리지 못한 학생 수 카운트
                count += 1
            }
        }
    }
    
    return n - count
}
