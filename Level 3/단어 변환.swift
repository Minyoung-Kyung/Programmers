import Foundation

// 각 단어는 알파벳 소문자로만 이루어져 있고, 길이가 동일
func isChanged(_ now:String, _ word:String) -> Bool {
    var count : Int = 0
    
    if now.count != word.count {
        return false
    }
    
    // 문자열을 배열로 변환
    let nowArr = Array(now)
    let wordArr = Array(word)
    for i in 0..<nowArr.count {
        if nowArr[i] != wordArr[i] {
            count += 1
        }
        
        if count > 1 {
            return false
        }
    }
    
    // 다른 알파벳이 1개이면 변환 가능
    return true
}

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    var queue : [String] = [] // 단어를 담을 큐
    queue.append(begin)
    
    var isVisited = Array(repeating: false, count: words.count) // 방문 정보
    var answer : Int = 0 // 변환 결과
    
    if !words.contains(target) { // words 안에 target이 존재하지 않으면 변환 불가
        return 0
    }
    
    while !queue.isEmpty {
        let now = queue.popLast()!
        if now == target { // 변환이 완료되면 while문 종료
            break
        }
        
        answer += 1
        for i in 0..<words.count {
            if !isVisited[i] && isChanged(now, words[i]) {
                isVisited[i] = true // 방문 처리
                queue.append(words[i])
            }
        }
    }
    
    return answer
}
