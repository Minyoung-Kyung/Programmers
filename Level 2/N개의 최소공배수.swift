func solution(_ arr:[Int]) -> Int {
    var num = arr[0] // num을 배열 첫번째 수로 초기화
    
    for i in 0..<arr.count-1 { // 작은 숫자부터 2개씩 묶어 순로 최소공배수 구하기
        let gcbNum = num * arr[i+1] / gcd(num, arr[i+1]) // 최대공약수를 구하는 함수 활용
        num = gcbNum
    }
    
    return num
}

func gcd(_ a: Int, _ b: Int) -> Int { // 최대공약수를 구하는 함수
    let r = a % b
    
    if r != 0 {
        return gcd(b, r)
    } else {
        return b
    }
}
