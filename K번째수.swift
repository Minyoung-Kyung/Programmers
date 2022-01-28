import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer : [Int] = []
    for commands in commands {
        let i = commands[0] - 1
        let j = commands[1] - 1
        let k = commands[2] - 1
        
        let number = Array(array[i...j]).sorted()[k]
        answer.append(number)
    }
    return answer
}
