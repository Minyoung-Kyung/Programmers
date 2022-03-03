import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var wordArr : [String] = [] // 끝말잇기에 성공한 단어를 담을 배열
    
    for i in 0..<words.count {
        var word = words[i]
        var turn = i % n + 1 // 현재 차례인 사람의 번호
        var number = i / n + 1 // 현재 차례인 사람이 말한 횟수
        
        // 실패 사유 1 : 단어가 한글자 이하인 경우
        if word.count < 2 {
            return [turn, number]
        }
        
        // 실패 사유 2 : 이미 말했던 단어인 경우
        if wordArr.contains(word) {
            return [turn, number]
        }
        
        // 실패 사유 3 : 끝말잇기를 실패한 경우
        if wordArr.count != 0 {
            var lastWord = wordArr[wordArr.count - 1]
            if lastWord.last! != word.first! {
                return [turn, number]
            }
        }
        
        // 조건을 모두 통과하면 배열에 단어 추가
        wordArr.append(word)
    }
    
    return [0, 0]
}
