class Solution {
    func freqAlphabets(_ s: String) -> String {
        var s = Array(s)
        let letters = Array("abcdefghijklmnopqrstuvwxyz")
        var octothorpIndices = Set<Int>()
        for (index, char) in s.enumerated() {
            if char == "#" { octothorpIndices.insert(index) }
        }
        var decryptedStr = ""
        for (index, digitChar) in s.enumerated() {
            if octothorpIndices.contains(index + 2) {
                guard let combinedNum = Int("\(digitChar)\(s[index+1])") else { fatalError("unexpected input") }
                decryptedStr.append(letters[combinedNum - 1])
            } else if octothorpIndices.contains(index + 1) || octothorpIndices.contains(index) {
                continue
            } else {
                decryptedStr.append(letters[Int("\(digitChar)")! - 1])
            }
        }
        return decryptedStr
    }
}
