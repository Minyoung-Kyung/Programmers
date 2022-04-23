// 문자열 s의 길이가 4 혹은 6이고, 숫자로만 구성돼있는지 확인해주는 함수
// s가 "a234"이면 False를 리턴하고 "1234"라면 True를 리턴
func solution(_ s:String) -> Bool {
    return (s.count == 4 || s.count == 6) && Int(s) != nil ? true : false
}
