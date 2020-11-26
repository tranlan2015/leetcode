/*
 Given an integer, convert it to a roman numeral.
 
 Example 1:
 
 Input: num = 3
 Output: "III"
 Example 2:
 
 Input: num = 4
 Output: "IV"
 Example 3:
 
 Input: num = 9
 Output: "IX"
 Example 4:
 
 Input: num = 58
 Output: "LVIII"
 Explanation: L = 50, V = 5, III = 3.
 Example 5:
 
 Input: num = 1994
 Output: "MCMXCIV"
 Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
*/

func intToRoman(_ num: Int) -> String {
  let units = [1000, 100, 10, 1]
  let nums: [Int : String] = [1000 : "M", 500 : "D", 100 : "C", 50 : "L", 10 : "X", 5 : "V", 1 : "I"]
  
  var ans: String = ""
  var value = num
  
  for i in units {
    let number = (value/i)
    if number == 9 {
      ans += nums[i] ?? ""
      ans += nums[i*10] ?? ""
      
    } else if number == 4 {
      ans += nums[i] ?? ""
      ans += nums[5*i] ?? ""
      
    } else if i > 0 {
      let total = number >= 5 ? number - 5 : number
      if number >= 5 {
        ans += nums[i*5] ?? ""
      }
      for _ in 0..<total {
        ans += nums[i] ?? ""
      }
    }
    
    value = value%i
  }
  return ans
}
