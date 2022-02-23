import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result : [[Int]] = []
    
    for index in 0..<arr1.count {
        result.append([])
        for i in 0..<arr2[0].count {
            var hap = 0
            for j in 0..<arr2.count {
                hap += arr1[index][j] * arr2[j][i]
            }
            result[index].append(hap)
        }
    }
    
    return result
}
