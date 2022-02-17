import Foundation

func solution(_ n:Int) -> Int {
    var str = String(n, radix: 3) // Int n을 String 3진수로 변환
    var str2 = ""
    
    for i in str.reversed() {
        str2 += String(i)
    }
    
    return Int(str2, radix: 3)! // String str2를 Int 10진수로 변환, Optional 제거
}
