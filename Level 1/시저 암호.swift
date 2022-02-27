func solution(_ s:String, _ n:Int) -> String {
    var result = ""
    
    for i in s {
        var unicode = i.asciiValue!
        
        if i == " " {
            result += " " // 공백 추가
        } else {
            if unicode >= 54 && unicode <= 90 { // 대문자인 경우
                if unicode + UInt8(n) > 90 {
                    unicode -= 26
                }
            } else { // 소문자인 경우
                if unicode + UInt8(n) > 122 {
                    unicode -= 26
                }
            }
            result += String(UnicodeScalar((unicode) + UInt8(n)))
        }
    }
    
    return result
}
