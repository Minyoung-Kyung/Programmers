func solution(_ n:Int, _ m:Int) -> [Int] {
    var answer : [Int] = []
    
    answer.append(gcd(n, m))
    answer.append(n * m / gcd(n, m))
    
    return answer
}

func gcd(_ a: Int, _ b: Int) -> Int {
  let r = a % b
    
  if r != 0 {
    return gcd(b, r)
  } else {
    return b
  }
}
