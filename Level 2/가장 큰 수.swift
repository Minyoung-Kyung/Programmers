import Foundation

func solution(_ numbers:[Int]) -> String {
    var sortedArr : [Int] = numbers.sorted{ Int("\($0)\($1)")! > Int("\($1)\($0)")! }
    
    if sortedArr[0] == 0 { // 모든 배열의 값이 0인 경우
        return "0"
    }
    
    return sortedArr.map{String($0)}.joined()
}
