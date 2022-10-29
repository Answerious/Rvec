#Dot(mutmal) function for rvec
#(c) Jake Leroux 2021-22 BSD Class 3

require_relative 'identifier'
#require 'matrix'

def func_dot(x, y)
    stat1, stat2, = id(x), id(y)
    if stat1 && stat2 == "2D"
        return ((Matrix[*x]) * (Matrix[*y])).to_a

    elsif stat1 && stat2 == "1D"
        return ((Matrix[*x]) * (Matrix[*y])).to_a

    elsif stat1 && stat2 == "3D"
        x.each do |item|
            y.each do |row| 
                return ((Matrix[*item]) * (Matrix[*row])).to_a
            end
        end
    else
    end
end