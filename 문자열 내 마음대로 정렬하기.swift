func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted{Array($0)[n] == Array($1)[n] ? $0 < $1 : Array($0)[n] < Array($1)[n]}
}

/*
1. 주어진 배열의 각 요소를 배열로 바꾼다.
2. if : 앞 배열의 n번째 글자와 뒷 배열의 n번째 글자가 같을 경우
3. true : 배열 자체로 정렬하고
4. false : 다를 경우엔 n번째 글자를 기준으로 정렬한다.
*/
