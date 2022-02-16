import Foundation

func solution(_ n:Int) -> Int
{
    var answer : Int = 0
    var nArr = String(n).map{Int(String($0))!}
    
    for i in nArr {
        answer += i
    }
    
    return answer
}
