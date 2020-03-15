class Solution {
    func generateTheString(_ n: Int) -> String {
        return n % 2 == 1 ? String(repeating: "a", count: n) : String(repeating: "a", count: n - 1) + "b"
    }
}
