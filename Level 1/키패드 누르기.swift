import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var result = ""
    var leftHand = 10
    var rightHand = 12

    for i in numbers {
        var num = i

        if (num == 1 || num == 4 || num == 7) { // 왼쪽 엄지손가락 사용
            leftHand = num
            result += "L"
        } else if (num == 3 || num == 6 || num == 9) { // 오른쪽 엄지손가락 사용
            rightHand = num
            result += "R"
        } else if (num == 2 || num == 5 || num == 8 || num == 0){ // 두 엄지손가락 사용
            if num == 0 {
                num = 11
            }
            
            var left = abs(((num - leftHand) / 3) + ((num - leftHand) % 3))
            var right = abs(((num - rightHand) / 3) + ((num - rightHand) % 3))
            
            if left < right {
                leftHand = num
                result += "L"
            } else if right < left {
                rightHand = num
                result += "R"
            } else {
                if hand == "right" {
                    rightHand = num
                    result += "R"
                } else if hand == "left" {
                    leftHand = num
                    result += "L"
                }
            }
        }
    }
    
    return result
}
