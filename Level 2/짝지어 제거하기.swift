import Foundation

// 1. 문자열에서 같은 알파벳이 2개 붙어 있는 짝 찾기
// 2. 그 둘을 제거한 뒤, 앞뒤로 문자열 이어 붙이기
// 3. 이 과정을 반복해서 문자열을 모두 제거한다면 짝지어 제거하기 종료
func solution(_ s:String) -> Int {
     var stack = [Character]()
     var arr = Array(s) // 문자열을 배열로 변환

     for i in arr.indices { // 0..<arr.count
         if stack.isEmpty { // 비어있으면 현재 index에 있는 문자를 stack에 추가
             stack.append(arr[i])
         } else {
             if stack.last! == arr[i] { // 반복된 문자를 만나면 제거
                 stack.removeLast()
             } else { // 반복된 문자가 아닌 경우 stack에 추가
                 stack.append(arr[i])
             }
         }
     }

     // stack이 비어있으면 1(성공), 아닐 경우 0(실패)을 반환
     return stack.isEmpty ? 1 : 0
}
