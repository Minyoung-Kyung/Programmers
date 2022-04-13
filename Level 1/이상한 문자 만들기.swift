func solution(_ s:String) -> String {
    let sArr = s.components(separatedBy: " ") // s를 공백으로 구분하여 배열로 저장
    var answer : String = ""
    
    for i in 0..<sArr.count {
        if i != 0 {
            answer += " " // 공백 추가
        }
        
        for j in 0..<sArr[i].count {
            let index = sArr[i].index(sArr[i].startIndex, offsetBy: j)
            if j % 2 == 1 { // 단어별 홀수번째 알파벳은 소문자로 변환
                answer += String(sArr[i][index]).lowercased()
            } else { // 단어별 짝수번째 알파벳은 대문자로 변환
                answer += String(sArr[i][index]).uppercased()
            }
        }
    }
    
    return answer
}
