def is_anagram(str1, str2):

    #if the length of the string differ - they are not anagram

    if len(str1) != len(str2):
        return False

    # We have to sort the letters of the strings and then we have to compare the letter with same indexes.
    str1 = sorted(str1)
    str2 = sorted(str2)
    print(s1)
##after that we have to check the letters with the same indexes
for i in range(len(str1)):
    if str1[i] != str2[i]:
        return False 
        return True
   
    if __name__ == '__main__':

      s1 = ['f', 'l', 'u', 's', 't', 'e', 'r']
      s2 = ['f', 'l', 'u', 's', 't', 'e', 'r']

      print(is_anagram(s1, s2))      