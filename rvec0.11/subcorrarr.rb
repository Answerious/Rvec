#Subtract each element of a 2D array with corresponding element of another array
#(c) Jake Leroux 2021-22 BSD Class 3

require_relative 'rvec'

def sdt(x, y, z)
    x.zip(y).each do |sublist, sublist2| @sublist = []
        sublist.zip(sublist2).each do |item, item2|
            @sublist << (item - item2)
        end
        @return << @sublist
    end
    z.times{@return.shift} # <-- Hard coded to shift over four times change if you want
    return @return
end