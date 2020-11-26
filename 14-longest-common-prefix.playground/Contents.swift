/*
 Write a function to find the longest common prefix string amongst an array of strings.

 If there is no common prefix, return an empty string "".

  

 Example 1:

 Input: strs = ["flower","flow","flight"]
 Output: "fl"
 Example 2:

 Input: strs = ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.
*/

/* Solution:
 - Time complexity: O(n^2)
 - Space complexity : O(1)
*/

func longestCommonPrefix(_ strs: [String]) -> String {
  if strs.count == 0 { return "" }
  var arrays: [[String.Element]] = []
  for str in strs {
    arrays.append(Array(str))
  }
  
  var ans: String = ""
  for i in 0 ..< arrays[0].count {
    var j = 1
    while j < arrays.count {
      if i < arrays[j].count ||
        arrays[j][i] != arrays[0][i] {
        return ans
      }
      j += 1
    }
    ans += String(arrays[0][i])
  }
  return ans
}
