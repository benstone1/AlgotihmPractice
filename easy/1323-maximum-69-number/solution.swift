class Solution {
    func maximum69Number (_ num: Int) -> Int {
        var firstSixPlace: Int? = nil
        var numCopy = num
        var currentPlace = 1
        while numCopy > 0 {
            if numCopy % 10 == 6 {
                firstSixPlace = currentPlace
            }
            currentPlace *= 10
            numCopy /= 10
        }
        guard let place = firstSixPlace else { return num }
        return num + 3 * place
    }
}
