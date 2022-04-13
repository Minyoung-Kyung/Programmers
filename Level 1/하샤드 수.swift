// 하샤드 수 : x의 자릿수의 합으로 x가 나누어지는 수
func solution(_ x:Int) -> Bool {
    var xArr = String(x).map{Int(String($0))!} // 숫자를 문자열로 변환한 후 배열에 각 자릿수를 배열에 담기
    var xHap : Int = 0
    
    for i in 0..<xArr.count { // x의 자릿수의 합 구하기
        xHap += Int(xArr[i])
    }
    
    return (x%xHap==0) ? true : false
}
