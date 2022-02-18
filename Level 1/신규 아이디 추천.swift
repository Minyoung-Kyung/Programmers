import Foundation

func solution(_ new_id:String) -> String {
  
    // 1단계 : 대문자 -> 소문자
    var id = new_id.lowercased()
    
    // 2단계 : 숫자, 문자, 특수문자(-, _, .)만 남기고 모두 제거
    var newId : String = ""
    for i in id {
        if i.isNumber || i.isLetter || i == "-" || i == "_" || i == "." {
            newId.append(i)
        }
    }
    
    // 3단계 : .. 은 . 으로 대체
    while newId.contains("..") {
        newId = newId.replacingOccurrences(of : "..", with : ".")
    }
    
    // 4단계 : 문자 맨 처음과 끝에 있는 . 제거
    while newId.hasPrefix(".") {
        newId.removeFirst()
    }
    
    while newId.hasSuffix(".") {
        newId.removeLast()
    }
    
    // 5단계 : 빈 문자열이라면 a 추가
    if newId.count == 0 {
        newId = "a"
    }
    
    // 6단계 : 문자열의 길이가 16 이상이면 15까지 자르고, 문자 맨 끝에 .이 있다면 제거
    if newId.count >= 16 {
        let index = newId.index(newId.startIndex, offsetBy : 15)
        newId = String(newId[newId.startIndex..<index])
        if newId.hasSuffix(".") {
          newId.removeLast()
        }
    }
    
    // 7단계 : 문자열의 길이가 2 이하이면 3이 될 때까지 반복해서 문자 추가
    if newId.count <= 2 {
        while newId.count != 3 {
            newId = newId + String(newId.last!)
        }
    }
    
    return newId
}
