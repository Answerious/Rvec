#sigmoid function for rvec
#(c) Jake Leroux 2021-22 BSD Class 3

require_relative 'identifier'

"""creates this '1.0/(1.0+ exp(x))' function"""

def func_sig(x)
    uid, @return = id(x), []
    if uid == "Float" || uid == "Integer"
        return (1.0/(1.0+Math.exp(x)))

    elsif uid == "1D"
        x.each{ |item| @return << (1.0/(1.0+Math.exp(item)))}
        return @return

    elsif uid == "2D"
        x.each{|subset| @subset = [] and subset.each{|item| @subset << (1.0/(1.0+Math.exp(item)))} and @return << @subset}
        return @return

    elsif uid == "3D"
        x.each do |twod|
            @td = [] and twod.each do |subset|
                @subset = [] and subset.each do |item|
                    @subset << (1.0/(1.0+Math.exp(item)))
                end
                @td << @subset
            end
            @reutn << @td
        end
        return @return

    elsif uid == "String"
        if x.match(/^[0-9]+$/)
            x.to_s and return (1.0/(1.0+Math.exp(x)))
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

a = sig(nst(dot(@inputs, @weights)))
#print(a)
"""