/*
Example 1:

Input: s = "III"
Output: 3
Example 2:

Input: s = "IV"
Output: 4
Example 3:

Input: s = "IX"
Output: 9
Example 4:

Input: s = "LVIII"
Output: 58
Explanation: L = 50, V= 5, III = 3.
Example 5:

Input: s = "MCMXCIV"
Output: 1994
Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
*/

/*
 - Time complexity: O(n)
 - Space complexity: O(1)
*/

func romanToInt(_ s: String) -> Int {
  let nums: [String : Int] = ["M" : 1000, "D" : 500, "C" : 100, "L" : 50, "X" : 10, "V" : 5, "I" : 1]
  let array = Array(s)

  var i = 0
  var result = 0
  while i < array.count {
    let valueB = i + 1 == array.count ? 1 : (nums[String(array[i + 1])] ?? 1)
    let valueA = nums[String(array[i])] ?? 0
    if valueB / valueA  == 5 || valueB / valueA == 10 {
      i += 1
      result += valueB - valueA
    } else {
      result += valueA
    }

    i += 1
  }
  return result
}
