import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var sortedD = d.sorted()
    var total = budget
    var result = 0
    
    for i in sortedD {
        if i <= total {
            result += 1
        } else {
            break
        }
        
        total -= i
    }
    
    return result
}
