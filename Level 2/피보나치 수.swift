func solution(_ n:Int) -> Int {
    var fibo : [Int] = [0, 1] // F(0) = 0, F(1) = 1
    
    for i in 2...n { // n > 1, F(n) = F(n-1) + F(n-2)
        fibo.append((fibo[i-1] + fibo[i-2]) % 1234567)
    }
    
    return fibo[n]
}
