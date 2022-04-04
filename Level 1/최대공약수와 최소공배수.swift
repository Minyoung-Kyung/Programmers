func solution(_ n:Int, _ m:Int) -> [Int] {
    var answer : [Int] = []
    
    answer.append(gcd(n, m)) // 최대공약수
    answer.append(n * m / gcd(n, m)) // 최소공배수 : 두 수의 곱 나누기 최대공약수
    
    return answer
}

func gcd(_ a: Int, _ b: Int) -> Int { // 최대공약수를 구하는 함수
    let r = a % b
    
    if r != 0 {
        return gcd(b, r)
    } else {
        return b
    }
}
