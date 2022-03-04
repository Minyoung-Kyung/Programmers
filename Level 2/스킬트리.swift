import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var total_trees = skill_trees.count // 가능한 스킬 트리의 수를 담을 변수
    
    for i in skill_trees {
        var skillArr = skill.map{$0} // skill의 문자를 나눠 담은 배열
        var treesArr = i.filter{skillArr.contains($0)} // skill을 포함하는 스킬 트리를 담은 배열
        while treesArr.count != 0 {
           if skillArr.first == treesArr.first { // 첫번째 문자부터 비교하며 문자의 순서가 일치하면 제거
               skillArr.removeFirst()
               treesArr.removeFirst()
           } else { // 일치하지 않으면 가능한 스킬 트리의 수 -1
               total_trees -= 1
               break
           }
        }
    }
    
    return total_trees
}
