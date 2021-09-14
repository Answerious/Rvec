#sigmoid derivative function for rvec
#(c) Jake Leroux 2021-22 BSD Class 3

def sigd(x)
    uid, @return = id(x), []
    if uid == "2D"
        x.each{|sublist| @sublist = [] and sublist.each{|item| @sublist << (item*(1.0-item)) } and @return << @sublist }
        return @return

    elsif uid == "3D"
        x.each do |twod|
            @td = [] and twod.each do |subset|
                @subset = [] and subset.each do |item|
                    @subset << (item*(1.0-item))
                end
                @td << @subset
            end
            @return << @td
        end
        return @return

    elsif uid == "1D"
        x.each{ |item| @return << (item*(1.0-item))} 
        return @return

    elsif uid == "Float" || uid == "Integer"
        return (x*(1.0-x))

    elsif uid == "String"
        if x.match(/^[0-9]+$/)
            x.to_s and return (x*(1.0-x))
        end
        
    elsif uid == "Matrix"
        puts("Exp doesnt do matrix please convert to 2D by using (yourmatrixhere).to_a")
    else
    end
end

"""

@inputs = [[0,1,0],[1,1,1],[1,0,1],[0,0,1]]
@weights = [[-0.54944709],
[-0.26457845],
[-0.06770566]]
output = (sig(nst(dot(@inputs, @weights))))

puts(print(sigd(output)))
"""