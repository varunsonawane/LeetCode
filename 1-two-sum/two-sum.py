class Solution(object):
    def twoSum(self, nums, target):
        seen = {}

        for i in range(len(nums)):
            num = nums[i]
            total = target - num

            if total in seen:
                return [seen[total], i]
            seen[num] = i