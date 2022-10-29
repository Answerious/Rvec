# (c) Jake Leroux 2022-23 BSD Class 3

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