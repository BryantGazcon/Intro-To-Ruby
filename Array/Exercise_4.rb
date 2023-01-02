# What does each method return in the following example?

            arr = [15, 7, 18, 5, 12, 8, 5, 1]
#index value =     0  1   2   3  4  5  6  7 
1. arr.index(5)
=> 3
#arr.index(5) gives you the index value for the number 5 which is 3
2. arr.index[5]
#undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index> 
# [] are the wrong symbol to find index of a value
3. arr[5]
=> 8
# arr[5] finds value for the certain index, the index of 5 is
# 8