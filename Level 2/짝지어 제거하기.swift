import Foundation

func solution(_ s:String) -> Int{
     var stack = [Character]()
     var arr = Array(s) // 문자열을 배열로 변환

     for i in arr.indices {
         if stack.isEmpty {
             stack.append(arr[i]) 
         } else {
             if stack.last! == arr[i] {
                 stack.removeLast()
             } else { 
                 stack.append(arr[i])
             }
         }
     }

     return stack.isEmpty ? 1 : 0
}
