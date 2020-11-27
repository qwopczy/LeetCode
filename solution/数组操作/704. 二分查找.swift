//给定一个 n 个元素有序的（升序）整型数组 nums 和一个目标值 target  ，写一个函数搜索 nums 中的 target，如果目标值存在返回下标，否则返回 -1。

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0,right = nums.count - 1
        while left <= right {
            let mid = left + (right-left)/2
            
            if target == nums[mid] {
                return mid
            }else if target > nums[mid]{
                left = mid + 1
            }else{
                right = mid - 1
            }
        }
        return -1
        
    }
}
