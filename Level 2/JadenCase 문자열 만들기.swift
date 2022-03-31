func solution(_ s:String) -> String {
    var sArr = s.lowercased().components(separatedBy: " ") // 문자열을 소문자로 변환한 후 공백을 기준으로 나눠서 배열에 담기
    var answer = ""
    
    for i in 0..<sArr.count {
        if i != 0 {
            answer += " " // 공백 추가
        }
        
        for j in 0..<sArr[i].count {
            let index = sArr[i].index(sArr[i].startIndex, offsetBy: j)
            if j == 0 {
                answer += String(sArr[i][index]).uppercased() // 공백으로 나누어진 문자에서 첫번째 문자만 대문자로 변환
            } else {
                answer += String(sArr[i][index]).lowercased() // 나머지 문자들은 소문자로 유지
            }
        }
    }
    
    return answer
}
