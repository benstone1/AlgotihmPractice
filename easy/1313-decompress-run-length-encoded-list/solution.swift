class Solution {
    struct CompressedPair {
        let frequency: Int
        let value: Int
        var decodedList: [Int] { return [Int](repeating: value, count: frequency) }
    }

    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var decodedList = [Int]()
        for i in stride(from: 0, to: nums.count - 1, by: 2) {
            let pair = CompressedPair(frequency: nums[i], value: nums[i+1])
            decodedList += pair.decodedList
        }
        return decodedList
    }
}
