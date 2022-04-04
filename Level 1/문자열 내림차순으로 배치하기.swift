func solution(_ s:String) -> String {
    return String(s.sorted{$0 > $1})
}

// 문자열 정렬
// 내림차순 : s.sorted(by:>), s.sorted{$0 > $1)
// 오름차순 : s.sorted(by:<), s.sorted{$0 < $1)
