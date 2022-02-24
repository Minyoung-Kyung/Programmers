func solution(_ a:Int, _ b:Int) -> String {
    var day = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"] // 2016년 1월 1일이 금요일이기 때문에 "FRI" 로 시작
    var date = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31] // 1월 ~ 12월 일 수
    var dateSum = b-1 // 인덱스 번호를 위해 b일 - 1을 dateSum 에 미리 넣어두기
    
    for i in 0..<a-1 { // a월은 제외하고 1 ~ a-1 월의 일 수를 dateSum 에 더하기
        dateSum += date[i]
    }
    
    return day[dateSum%7] // dateSum 을 7로 나눠 나오는 나머지의 요일 반환하기
}
