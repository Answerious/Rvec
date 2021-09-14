
=begin
[1,2,3] = 1D
[[1,2],[3,0]] = 2D
[[[1],[2]],[[3],[0]]] = 3D

3,1 -> 3 rows, 1 column -> 2D
Because the x value is > 1 
1,3 -> 1D because x < 1

3D arrays are harder to check for. Or in this case
automate. A way this can be done is given a certan
x and y point greater then something. Although it comes
down to what the end user wants something to be,
2D or 3D and what application they are using it for.
For now the automation of a 3D array will be left hashed 
out because unless the end user wants it; it is deemed
unrealistic for common use.

=end

require_relative('../rvecbase/identifier')

/ -automated function- /

def resize(array)
    if id(array) == "2D"
        /function for size check/
        if (columncheck(array)) < 2
            array.each{|arr| return arr}
        else
            return array
        end

    else 
        return array
    end
end

def columncheck(array)
    value = 0 and array.each do |arr|
        value += 1
    end
    return value
end