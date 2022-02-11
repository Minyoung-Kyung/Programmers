func solution(_ s:String) -> String { 
    let indexNum = s.count/2 
    let array = Array(s) 
    
    return s.count%2 == 1 ? String(array[indexNum]) : String(array[indexNum-1...indexNum]) 
}
