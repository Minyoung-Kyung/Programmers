import Foundation

func solution(_ s:String) -> Int {
    let arr = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var str = s
    
    for i in 0..<arr.count { // str이 영단어를 포함하고 있으면 숫자로 바꾸기
        str = str.replacingOccurrences(of: arr[i], with: String(i))
    }
    return Int(str)!
}
