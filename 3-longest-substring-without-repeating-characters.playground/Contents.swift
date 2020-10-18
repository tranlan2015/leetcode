/*
 Given a string s, find the length of the longest substring without repeating characters.

  

 Example 1:

 Input: s = "abcabcbb"
 Output: 3
 Explanation: The answer is "abc", with the length of 3.
 Example 2:

 Input: s = "bbbbb"
 Output: 1
 Explanation: The answer is "b", with the length of 1.
 Example 3:

 Input: s = "pwwkew"
 Output: 3
 Explanation: The answer is "wke", with the length of 3.
 Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
 Example 4:

 Input: s = ""
 Output: 0
*/

/* Solution: Hash table
 - Time complexity: O(n)
 - Space complexity : O(m) m is number of characters in hash
*/

func lengthOfLongestSubstring(_ s: String) -> Int {
  var hash: [String.Element : Int] = [:]
  let chars = Array(s)
  
  var ans: Int = 0
  var startIndex: Int = 0
  for i in 0 ..< chars.count {
    if let index = hash[chars[i]], index >= startIndex {
      startIndex = index + 1
    }
    hash[chars[i]] = i
    ans = max(ans, i - startIndex + 1)
  }

  return ans
}
