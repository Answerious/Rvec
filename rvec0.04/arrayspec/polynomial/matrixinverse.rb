/work on this asap/
/ DENOTE NOT IN USE /
/ DENOTE NOT IN USE /
/ DENOTE NOT IN USE /
/ DENOTE NOT IN USE /
/ DENOTE NOT IN USE /
/ DENOTE NOT IN USE /
'''
[ 1 2 ]-1 = [ 1 0 ]
[ 3 4 ]     [ 0 1 ]

pivot in the first 1st column in the 1st row
[ 1 2 ] [ 1 0 ]
[ 3 4 ] [ 0 1 ]
multiply the 1st row by 3
[ 3 6 ] [ 3 0 ]
[ 3 4 ] [ 0 1 ]
subtract the 1st row from the 2nd row and restore it
[ 1 2 ] [ 1 0 ]
[ 0 -2] [-3 1 ]
pivot in the 2nd column by dividing the 2nd row by -2
[ 1 2 ] [ 1 0 ]
[ 0 1 ] [3/2 -1/2]
multiply the 2nd row by 2
[ 1 2 ] [ 1 0 ]
[ 0 2 ] [ 3 -1]
subtract the 2nd row from the first row and restore it
[ 1 0 ] [-2 1 ]
[ 0 1 ] [3/2 -1/2]
result:
[-2 1 ]
[3/2 -1/2]
'''

require_relative 'matrixmulti'

test_arr = [[1,2], [3,4]]

/first step is two create the start of the inverse matrix/
def func_basic_inverse(given_arr)
    x = func_size(given_arr)[0]
    inverse_array, position = [], 0
    x.times{|i| layer = [] and inverse_array << layer}
    inverse_array.each{|set| x.times{|j| set << 0} }
    inverse_array.each{|n| n[position] = 1 and position += 1}
    return inverse_array
end

def func_inverse(given_arr)
    start = func_basic_inverse(given_arr)
    type_arr = 0
    position = 0
    restore, restore2 = given_arr, start
    first_element = given_arr[type_arr][0]
    given_arr[type_arr].length().times do |i|
        given_arr[type_arr][i] = ((given_arr[type_arr][i]).to_f/first_element).to_f
        start[type_arr][i] = ((start[type_arr][i]).to_f/first_element).to_f
        given_arr[type_arr][i] = given_arr[type_arr][i]*given_arr[type_arr+1][position]
        start[type_arr][i] = start[type_arr][i]*given_arr[type_arr+1][position]
        #puts(print(given_arr))
    end
    given_arr[type_arr].length().times do |i|
        given_arr[type_arr+1][i] = given_arr[type_arr+1][i] - given_arr[type_arr][i]
        start[type_arr+1][i] = start[type_arr+1][i] - start[type_arr][i]
   
        puts(print(given_arr))
        #puts(print(given_arr[type_arr+1][position]))
        puts(print(start))
        puts(print(restore))
        #start[type_arr]
    return given_arr
end

func_inverse(test_arr)