import Foundation

func solution(_ n:Int) -> Int
{
    var answer : Int = 0
    var nArr = String(n).map{Int(String($0))!} // n의 각 자릿수를 배열에 담기
    
    for i in nArr { // 자릿수 더하기
        answer += i
    }
    
    return answer
}
