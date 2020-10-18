/*
 Input: l1 = [2,4,3], l2 = [5,6,4]
 Output: [7,0,8]
 Explanation: 342 + 465 = 807.
*/

/* Solution: Hash table
 - Time complexity: O(max(m,n))
 - Space complexity : O(max(m,n) + 1)
*/
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
  func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    let head: ListNode? = ListNode(0)
    var current: ListNode? = head, l1_cp: ListNode? = l1, l2_cp: ListNode? = l2
    
    var tempValue = 0
    while l1_cp != nil || l2_cp != nil {
      let value = tempValue + (l1_cp?.val ?? 0) + (l2_cp?.val ?? 0)
      current?.next = ListNode(value%10)
      tempValue = value/10
      
      l1_cp = l1_cp?.next
      l2_cp = l2_cp?.next
      current = current?.next
    }
    
    if tempValue == 1 {
      current?.next = ListNode(tempValue)
    }
    
    return head?.next
  }
}
