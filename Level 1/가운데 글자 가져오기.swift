func solution(_ s:String) -> String { 
    let indexNum = s.count/2
    let array = Array(s) // 문자열을 배열로 변환
    
    // 홀수인 경우 가운데 1글자 반환, 짝수인 경우 가운데 2글자 반환
    return s.count%2 == 1 ? String(array[indexNum]) : String(array[indexNum-1...indexNum]) 
}
