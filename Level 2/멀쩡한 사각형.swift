import Foundation

func solution(_ w:Int, _ h:Int) -> Int {
    var answer : Int = 0
    var width = w
    var height = h
    
    while width % height != 0 { // w와 h의 최대공약수만큼 반복
        let x = width % height
        width = height
        height = x
    }

    // 가로 * 세로 - 빗선이 지나가는 사각형의 개수
    // 빗선이 지나가는 사각형의 개수 : 가로 + 세로 - (가로 세로의 최대 공약수)
    return w*h-(w+h-height)
}
