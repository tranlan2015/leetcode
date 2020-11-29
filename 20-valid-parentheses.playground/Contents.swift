/*
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
  

 Example 1:

 Input: s = "()"
 Output: true
 Example 2:

 Input: s = "()[]{}"
 Output: true
 Example 3:

 Input: s = "(]"
 Output: false
 Example 4:

 Input: s = "([)]"
 Output: false
 Example 5:

 Input: s = "{[]}"
 Output: true
*/

/*
 - Time complexity: O(n)
- Space complexity : O(n)
*/

func isValid(_ s: String) -> Bool {
  let array = Array(s)
  let dict: [String : String] = ["}" : "{", "]" : "[", ")" : "("]
  
  var stack: [String] = []
  
  for i in 0 ..< array.count {
    if let value = dict[String(array[i])] {
      if stack.last == value {
        stack.popLast()
      } else {
        return false
      }
    } else {
      stack.append(String(array[i]))
    }
  }
  
  return stack.isEmpty
}
