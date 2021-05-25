#Exp function for rvec
#(c) Jake Leroux 2021-22 BSD Class 3

require_relative 'rvec'

def exp(x)
    /uid in this means universal id/
    /exp function for pretty much anything/
    uid, @return = id(x), []

    if uid == "Float" || uid == "Integer" ; return (Math.exp(x))

    elsif uid == "1D" 
        x.each{ |item| @return << (Math.exp(item)) }
        return @return

    elsif uid == "2D"
        x.each{ |subset| @subset = [] and subset.each{ |item| @subset << (Math.exp(item)) } and @return << @subset } 
        print(@return)

    elsif uid == "3D"
        x.each do |twod|
            @td = [] and twod.each do |subset| 
                @subset = [] and subset.each do |item|
                    @subset << (Math.exp(item))
                end
                @td << @subset
            end
            @return << @td
        end
        return @return

    elsif uid == "Matrix"
        puts("Exp doesnt do matrix please convert to 2D by using (yourmatrixhere).to_a")
    elsif uid == "String"
        puts("don't use a string instead use a float, integer, 1d, 2d, or 3d array")
    else
    end

end