func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    var graph : [[Int]] = Array(repeating: [], count: n + 1)
    
    // graph에 연결된 노드 정보 담기
    // 3 : [6, 4, 2, 1], 6 : [3] ...
    for e in edge {
        graph[e[0]].append(e[1])
        graph[e[1]].append(e[0])
    }
    
    return dfs(graph: graph)
}

func dfs(graph: [[Int]]) -> Int {
    var result = Array(repeating: 99999, count: graph.count) // 노드 번호, 깊이 (node, depth)
    result[0] = 0
    result[1] = 0
    
    var queue : [Int] = [] // 현재 탐색중인 노드 번호를 담을 큐
    queue.append(1) // 1번 노드부터 탐색
    
    while !queue.isEmpty {
        let now = queue.removeFirst() // 먼저 들어온 노드부터 제거 (선입선출)
        for next in graph[now] {
            if result[next] > result[now] + 1 { // 다음으로 탐색할 노드 번호가 현재 노드보다 멀리 떨어져 있고, 방문하지 않았던 노드인 경우
                result[next] = result[now] + 1 // 깊이 저장
                queue.append(next) // 큐에 담기
            }
        }
    }
    
    let max = result.max() // 최대 노드 깊이
    return result.filter{ max == $0 }.count // result에서 max와 같은 깊이 count
}
