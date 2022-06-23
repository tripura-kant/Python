def reverse(nums):
    #pointing to first item
    start_index  = 0

    #index pointing to last item
    end_index = len(nums)-1

    while end_index > start_index:
        #keep swapping the items
        nums[start_index], nums[end_index] = nums[end_index], nums[start_index]
        start_index = start_index + 1 
        end_index = end_index - 1

if __name__ == '__main__' :
    n = [9, 5 , 0]
    reverse(n)
    print(n)




