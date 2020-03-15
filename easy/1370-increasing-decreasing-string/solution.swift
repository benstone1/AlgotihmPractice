class Solution {
    func sortString(_ s: String) -> String {
        var finalStr = ""
        var frequencies = [Character: Int]()
        for char in s {
            frequencies[char] = frequencies[char, default: 0] + 1
        }
        var totalLetterCount = s.count
        let letters = "abcdefghijklmnopqrstuvwxyz"
        while totalLetterCount > 0 {
            let handleLetter = { (letter: Character) in
                if let count = frequencies[letter], count > 0 {
                    finalStr.append(letter)
                    frequencies[letter] = count - 1
                    totalLetterCount -= 1
                }
            }
            for letter in letters {
                handleLetter(letter)
            }
            for letter in letters.reversed() {
                handleLetter(letter)
            }
        }
        return finalStr
    }
}
