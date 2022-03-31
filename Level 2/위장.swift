func solution(_ clothes:[[String]]) -> Int { // clothes : [의상의 이름, 의상의 종류]
    var dic : [String:Int] = [:] // 의상의 종류와 개수를 담을 딕셔너리
    var answer = 1 // 곱셈을 위해 1로 초기화 
    
    clothes.forEach { (element) in // clothes에 있는 요소의 개수만큼 반복하는 forEach
        if dic.keys.contains(element[1]) { // 의상의 이름이 해당 의상 종류를 포함하고 있는 경우
            dic[element[1]]! += 1 // 해당 의상 종류에 1 더하기
        } else { // 포함하지 않은 경우 
            dic[element[1]] = 1 // 1로 초기화
        }
    }
    
    for v in dic {
        answer *= v.value + 1 // 의상 조합 계산
    }
    
    return answer-1 // 적어도 하나는 입기 때문에 아무것도 입지 않은 경우 빼기
}
