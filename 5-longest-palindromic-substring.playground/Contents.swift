/*
 Given a string s, return the longest palindromic substring in s.
  
 Example 1:
 Input: s = "babad"
 Output: "bab"
 Note: "aba" is also a valid answer.
 Example 2:
 Input: s = "cbbd"
 Output: "bb"
 Example 3:
 Input: s = "a"
 Output: "a"
 Example 4:
 Input: s = "ac"
 Output: "a"
*/

/* Solution:
 - Time complexity: O(n^2)
 - Space complexity : O(1)
*/

func longestPalindrome(_ s: String) -> String {
  if s.isEmpty { return "" }
  if s.count == 1 { return s }
  let array = Array(s)

  var maxlength = 0
  var startIndex = 0

  for middleIndex in 0 ..< array.count - 1 {
    let continuous = length(array: array, start: middleIndex, end: middleIndex + 1)
    let mirror = length(array: array, start: middleIndex, end: middleIndex)

    if continuous >= mirror && continuous > maxlength {
      maxlength = continuous
      startIndex = middleIndex - continuous/2
    } else if mirror > continuous && mirror > maxlength {
      maxlength = mirror
      startIndex = middleIndex - mirror/2
    }
  }

  var result: String = ""
  for i in startIndex ... startIndex + maxlength {
      result += String(array[i])
  }
  return result
}

func length(array: [String.Element], start: Int, end: Int) -> Int {
  var startCp = start
  var endCp = end
  while array[startCp] == array[endCp] {
    startCp -= 1
    endCp += 1
    if startCp < 0 || endCp == array.count {
      break
    }
  }

  return endCp - startCp - 2
}
