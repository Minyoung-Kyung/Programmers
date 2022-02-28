import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var reportInfo : [String:Set<String>] = [:] // ["신고 당한 ID" : 해당 ID를 신고한 유저 Set]
    var reportCount : [Int] = Array(repeating: 0, count: id_list.count)
    var idNumber : [String:Int] = [:] // ["유저 ID":인덱스 번호]
    
    for (i,id) in id_list.enumerated() { // id_list를 인덱스에 맞게 딕셔너리에 담기
        idNumber[id] = i
    }
    
    for r in report {
        let split = r.split(separator: " ")
        let report = String(split[0])
        let reported = String(split[1])
        if reportInfo[reported] == nil { // 중복 신고자가 아닌 경우
            reportInfo[reported] = [report] // 신고한 유저 Set에 추가
        } else {
            reportInfo[reported]!.insert(report)
        }
    }
    
    for info in reportInfo {
        if info.value.count >= k { // 신고 당한 수가 k 이상이면
            for id in info.value {
                reportCount[idNumber[id]!] += 1 // result 배열에 1씩 더하기
            }
        }
    }
    
    return reportCount
}
