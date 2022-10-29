#sigmoid derivative function for rvec
#(c) Jake Leroux 2021-22 BSD Class 3

require_relative "identifier"

def func_sigd(x)
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