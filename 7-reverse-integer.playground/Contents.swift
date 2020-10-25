/*
Given a 32-bit signed integer, reverse digits of an integer.

Note:
Assume we are dealing with an environment that could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.

 

Example 1:

Input: x = 123
Output: 321
Example 2:

Input: x = -123
Output: -321
Example 3:

Input: x = 120
Output: 21
Example 4:

Input: x = 0
Output: 0
 

Constraints:

-231 <= x <= 231 - 1
*/

/* Solution:
 - Time complexity: O(log(x))
 - Space complexity: O(1)
*/

import Foundation

func reverse(_ x: Int) -> Int {
  if x >= UINT32_MAX/2 || (-1)*x >= UINT32_MAX/2 { return 0 }

  var xValue: Int = x
  var ans: Int = 0
  
  while xValue != 0 {
    ans = ans*10 + xValue%10
    xValue = xValue/10
  }
  
  if ans >= UINT32_MAX/2 || (-1)*ans >= UINT32_MAX/2 { return 0 }

  return ans
}
