/*
The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

P   A   H   N
A P L S I I G
Y   I   R
And then read line by line: "PAHNAPLSIIGYIR"

Write the code that will take a string and make this conversion given a number of rows:

string convert(string s, int numRows);
 

Example 1:

Input: s = "PAYPALISHIRING", numRows = 3
Output: "PAHNAPLSIIGYIR"
Example 2:

Input: s = "PAYPALISHIRING", numRows = 4
Output: "PINALSIGYAHRPI"
Explanation:
P     I    N
A   L S  I G
Y A   H R
P     I
Example 3:

Input: s = "A", numRows = 1
Output: "A"
*/

/* Solution: n is length of s
 - Time complexity: O(n)
 - Space complexity: O(n)
*/

func convert(_ s: String, _ numRows: Int) -> String {
  if numRows == 1 { return s }
  let chars: [String.Element] = Array(s)
  
  var array: [String] = []
  for _ in 0 ..< numRows {
    array.append("")
  }
  
  var row = 0
  var isUp = true
  for i in 0 ..< chars.count {
    array[row] += String(chars[i])
    
    if isUp {
      row += 1
    } else {
      row -= 1
    }
    
    if row == 0 || row == numRows - 1 {
      isUp = !isUp
    }
  }
  
  var ans: String = ""
  for i in 0 ..< numRows {
    ans += array[i]
  }
  return ans
}
