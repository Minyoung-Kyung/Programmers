func solution(_ s:String) -> String {
    let splitArr = s.split(separator : " ") // 문자열 공백 제거한 배열 생성
    var numArr = splitArr.map{Int($0)!} // 문자열 배열을 정수 배열로 mapping
    
    return "\(numArr.min()!) \(numArr.max()!)" // 최솟값 최댓값 순으로 return
}
