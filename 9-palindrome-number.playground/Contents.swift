
/*
 Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.

Follow up: Could you solve it without converting the integer to a string?

 

Example 1:

Input: x = 121
Output: true
Example 2:

Input: x = -121
Output: false
Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
Example 3:

Input: x = 10
Output: false
Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
Example 4:

Input: x = -101
Output: false
*/

/*
 - Time complexity: O(n)
 - Space complexity: O(n)
*/
class Solution1 {
  func isPalindrome(_ x: Int) -> Bool {
    let chars: [String.Element] = Array(String(x))
    
    var start = 0
    var end = chars.count - 1
    while start <= end && chars[start] == chars[end] {
      start += 1
      end -= 1
    }
    
    return start >= end
  }
}

/*
 - Time complexity: O(log10(n))
 - Space complexity: O(1)
*/
class Solution2 {
  func isPalindrome(_ x: Int) -> Bool {
    if x < 0 { return false }
    
    var revertNumber: Int = 0
    var xValue: Int = x
    while xValue > 0 {
      revertNumber = revertNumber*10 + xValue%10
      xValue = xValue/10
    }
    
    return revertNumber == x
  }
}
