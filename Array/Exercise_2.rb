# What will the following programs return? What is the value 
# of arr after each?

1. arr = ["b", "a"]
# array is ["b", "a"]
   arr = arr.product(Array(1..3))
# ["b", "a"] is multiplied by array [1,2,3]
# new array = ["b", 1], ["b", 2],["b", 3], ["a", 1], ["a", 2], ["a",3]
   arr.first.delete(arr.first.last)
#first we look at (arr.first.last) first array:["b", 1], last item: 1
# so next arr.first.delete(1)
#first array: ["b", 1], delete: 1
# new array is 
#["b"], ["b", 2],["b", 3], ["a", 1], ["a", 2], ["a",3]

2. arr = ["b", "a"]
# first array is ["b","a"]
   arr = arr.product([Array(1..3)])
# ["b","a"] is multiplied by ([1,2,3])
# result = [ ["b",[1, 2, 3]] , ["a", [1, 2, 3]]  ]
   arr.first.delete(arr.first.last)
# (arr.first.last) = [1,2,3]
# arr.first.delete([1,2,3])
# new array is [["b"], ["a", [1, 2, 3]]] 
   
  