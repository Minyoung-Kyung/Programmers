func solution(_ x:Int) -> Bool {
    var xArr = String(x).map{Int(String($0))!} // 숫자를 문자열로 변환한 후 배열에 각 자리수의 숫자를 담기
    var xHap : Int = 0
    
    for i in 0..<xArr.count {
        xHap += Int(xArr[i])
    }
    
    return (x%xHap==0) ? true : false
}
