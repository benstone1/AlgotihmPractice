class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        return grid.reduce(0) { (total, arr) in
            guard let negOneIndex = indexOfFirstNegative(in: arr) else { return total }
            return total + arr.count - negOneIndex
        }
    }
    func indexOfFirstNegative(in sortedArr: [Int], minIndex: Int? = nil, maxIndex: Int? = nil) -> Int? {
        let minIndex = minIndex ?? 0
        let maxIndex = maxIndex ?? sortedArr.count - 1
        guard minIndex <= maxIndex else { return nil }
        let midIndex = (minIndex + maxIndex) / 2
        if sortedArr[midIndex] < 0 {
            var firstOccurenceIndex = midIndex
            while firstOccurenceIndex > 0 {
                let leftVal = sortedArr[firstOccurenceIndex - 1]
                if leftVal >= 0 { return firstOccurenceIndex }
                firstOccurenceIndex -= 1
            }
            return firstOccurenceIndex
        } else {
            return indexOfFirstNegative(in: sortedArr, minIndex: midIndex + 1, maxIndex: maxIndex)
        }
    }
}
