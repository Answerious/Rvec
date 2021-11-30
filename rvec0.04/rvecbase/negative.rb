#Negative function for rvec
#(c) Jake Leroux 2021-22 BSD Class 3

require_relative 'identifier'

def func_nst(x)
    uid, @return = id(x), []
    if uid == "2D"
        @new = [] and x.each { |subset| @subset = [] and subset.each{ |item| @subset << (item *-1) } and @return << @subset }
        return @return
    elsif uid == "3D"
        x.each do |twod|
            @td = [] and twod.each do |subset| 
                @subset = [] and subset.each do |item|
                    @subset << (item *-1)
                end
                @td << @subset
            end
            @return << @td
        end
        return @return
    elsif uid == "1D"
        x.each{ |item| @return << (item*-1) }
        return @return
    else
    end
end