/ add array sum ei sum([58,2]) /
# ∑ <- sum
# Rvec array sum & sumation
# (c) Jake Leroux 2021-22 BSD Class 3

require_relative '../rvecbase/rvarray'
require_relative '../rvecbase/identifier'

def sum(array)
    @option, @sum = id(array), 0

    if @option == "1D" ; array.each{ |ele| @sum += ele }
    elsif @option == "2D" ; array.each{ |set| set.each{ |ele| @sum += ele }}
    elsif @option == "3D"
        array.each do |twod|
            twod.each do |set| 
                set.each do |ele|
                    @sum += ele
                end
            end
        end
    else
    end

    return (@sum)

end