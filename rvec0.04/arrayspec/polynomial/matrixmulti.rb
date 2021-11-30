'''
[ 1 2 3 ] * [ 7 8 ] = [ x1 x2 ]
[ 4 5 6 ]   [ 9 10]   [ x3 x4 ]
            [11 12]

[1 2 3] * [7 9 11] = 
1 * 7 + 2 * 9 + 3 * 11
    = x1 = 58

[1 2 3] * [8 10 12] = 
1 * 8 + 2 * 10 + 3 * 12
    = x2 = 64

[4 5 6] * [7 9 11] =
4 * 7 + 5 * 9 + 6 * 11 =
    = x3 = 139

[4 5 6] * [8 10 12] =
4 * 8 + 5 * 10 + 6 * 12 =
    = x4 = 154

= [ 58 64 ]
  [139 154]
'''

/use the information above to code/

#test_arr = [[1.0, 0.0, 0.0, 0.0], [1.0, 1.5, 2.25, 3.375], [1.0, 2.0, 4.0, 8.0], [1.0, 3.0, 9.0, 27.0], [1.0, 4.0, 16.0, 64.0], [1.0, 5.0, 25.0, 125.0], [1.0, 6.0, 36.0, 216.0]]
#test_arr2 = [[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0], [0.0, 1.5, 2.0, 3.0, 4.0, 5.0, 6.0], [0.0, 2.25, 4.0, 9.0, 16.0, 25.0, 36.0], [0.0, 3.375, 8.0, 27.0, 64.0, 125.0, 216.0]]
#test_arr3 = [[0.0], [1.5], [2.5], [4.0], [4.0], [4.5], [5.0]]
#test_arr4 = [[0.9815312893627404, -0.9467074409560189, 0.2666995795306611, -0.022823896829294085], [-0.9467074409560189, 2.061496080910118, -0.8095161529631821, 0.08341167512371726], [0.2666995795306611, -0.8095161529631821, 0.3545145357734171, -0.038717261219292795], [-0.022823896829294085, 0.08341167512371726, -0.038717261219292795, 0.00437120633803191]]
#test_arr5 = [[21.5], [87.75], [405.875], [2031.5625]]
#test_arr = [1,1,1]
require_relative '../../rvecbase/identifier' # <-- Identifier option

def func_check_input(given_arr)
    detail_node = func_id(given_arr) and if detail_node == "2D" then return true else return nil end
end

def func_gather_size(pass, given_arr)
    if pass == true then
        x, y = 0, 0
        given_arr.length().times{ |i| y += 1}
        given_arr.each{ |j| x = j.length}  
        return y, x
    else
        return "Invalid input"
    end
end

'''displayed and returned by column, rows'''

def func_size(given_arr)
    note = func_check_input(given_arr)
    return (func_gather_size(note, given_arr))
end

def func_resize_for_dot(given_arr)
    note = func_check_input(given_arr)
    limit = func_size(given_arr)
    matrix = []
    if note == true then
        limit[1].times do |i|
            layer = []
            given_arr.each do |j|
                layer << j[i]
            end
        if matrix.length() < limit[1] then matrix << layer else nil end
        end
        return matrix
    end
end

def func_dot_rule(given_arr, given_arr2)
    matrix = [] and check_size1 = func_size(given_arr)
    check_size2 = func_size(given_arr2)
    redone_matrix2 = func_resize_for_dot(given_arr2)
    if check_size1[1] == check_size2[0] then
        given_arr.each do |set|
            layer = []
            redone_matrix2.each do |set2|
                sum = 0
                set2.length().times do |i|
                    sum += (set[i] * set2[i])
                end
                layer << sum
            end
            matrix << layer
        end
        return matrix

    else
        return "Mismatch"
    end
end

#puts(print(func_size(test_arr)))
#puts(print(func_size(test_arr2)))
#puts(print(func_dot_rule(test_arr4, test_arr5)))
#puts(print(func_resize_for_dot(test_arr)))
#[[-0.09213628284743436], [1.4357337789037672], [-0.06895025139387201], [-0.005328810996143574]]
#[[-0.04699368 0.94866146  0.24437298 -0.0513173