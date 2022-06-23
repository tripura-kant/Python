#Design an optimal algorithm for checking whether a given string is palindrome or not!

def is_palindrome(s):
    original_string = s
    # This is what we have implemented in the previous lecture in 0(N)
    reversed_string = reverse(s)

    if original_string == reversed_string:
        return True
    return False    

def reverse(data):
    #string into a list of characters
    data = list(data)


    #pointing to first item
    start_index  = 0

    #index pointing to last item
    end_index = len(data)-1

    while end_index > start_index:
        #keep swapping the items
        
        data[start_index], data[end_index] = data[end_index], data[start_index]
        start_index = start_index + 1 
        end_index = end_index - 1


    # transform the list of letters into a string
    return ''.join(data)


    return False

    if __name__ == '__main__':
        print(is_palindrome('kevin'))

