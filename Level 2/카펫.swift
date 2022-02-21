import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var total : Int = brown + yellow // 전체 사각형 크기
    var x : Int = 0 // 가로
    var y : Int = 0 // 세로
    
    for i in 1...total { // 가로와 세로의 곱이 전체 사각형 크기가 되는 값 찾기
        if total % i == 0 {
            x = total / i
            y = i
        }
        
        if (x-2) * (y-2) == yellow { // (가로 개수 - 2)와 (세로 개수 - 2)의 곱이 노란색 카펫의 수와 같으면 반복문 나가기
            break
        }
    }
    
    return [x, y]
}
