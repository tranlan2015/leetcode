/*
 Merge two sorted linked lists and return it as a new sorted list.
 The new list should be made by splicing together the nodes of the first two lists.
*/

/*
 - Time complexity: O(m + n)
- Space complexity : O(m + n)
*/

public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() {
    self.val = 0
    self.next = nil
  }
  
  public init(_ val: Int) {
    self.val = val
    self.next = nil
  }
  
  public init(_ val: Int, _ next: ListNode?) {
    self.val = val
    self.next = next
  }
}
  
func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
  let dump: ListNode? = ListNode(0)
  var current: ListNode? = dump
  
  var l1cp = l1
  var l2cp = l2
  
  while l1cp != nil || l2cp != nil {
    if let l1Val = l1cp?.val,
      let l2Val = l2cp?.val {
      
      if l1Val < l2Val {
        current?.next = l1cp
        l1cp = l1cp?.next
        
      } else {
        current?.next = l2cp
        l2cp = l2cp?.next
        
      }
      
    } else if l1cp != nil {
      current?.next = l1cp
      l1cp = l1cp?.next

    } else if l2cp != nil {
      current?.next = l2cp
      l2cp = l2cp?.next
    }
    
    current = current?.next
  }
  
  return dump?.next
}
