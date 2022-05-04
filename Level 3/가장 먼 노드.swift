func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    var graph : [[Int]] = Array(repeating: [], count: n + 1)
    
    // graph에 연결된 노드 정보 담기
    // [[], [3, 2], [3, 1, 4, 5], [6, 4, 2, 1], [3, 2], [2], [3]]
    for e in edge {
        graph[e[0]].append(e[1])
        graph[e[1]].append(e[0])
    }
    
    return dfs(graph: graph)
}

func dfs(graph: [[Int]]) -> Int {
    var visited = Array(repeating: 0, count: graph.count) // 방문한 노드의 깊이를 저장할 배열
    var queue : [Int] = [] // 현재 탐색중인 노드 번호를 담을 큐
    queue.append(1) // 1번 노드부터 탐색
    
    while !queue.isEmpty {
        let now = queue.removeFirst() // 먼저 들어온 노드부터 제거 (선입선출)
        for next in graph[now] {
            if visited[next] == 0 { // 방문하지 않았던 노드인 경우
                visited[next] = visited[now] + 1 // 방문 처리
                queue.append(next) // 연결된 노드 큐에 담기
            }
        }
    }
    visited[1] = 0 // 1번 노드는 초기화
    
    let max = visited.max() // 최대 노드 깊이
    return visited.filter{ max == $0 }.count // result에서 max와 같은 깊이 count
}
