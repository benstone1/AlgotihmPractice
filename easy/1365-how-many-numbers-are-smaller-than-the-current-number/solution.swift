class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        let sortedNums = nums.sorted()
        var dict = [Int: Int]()
        for (index, num) in sortedNums.enumerated() {
            guard dict[num] == nil else { continue }
            dict[num] = index
        }
        return nums.map { dict[$0]! }
    }
}
