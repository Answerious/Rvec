require_relative 'rvec'

def sigd(x)
    /2D only for now/
    @return = [] and x.each{|sublist| @sublist = [] and sublist.each{|item| @sublist << (item*(1.0-item)) } and @return << @sublist }
    return @return
end

"""

@inputs = [[0,1,0],[1,1,1],[1,0,1],[0,0,1]]
@weights = [[-0.54944709],
[-0.26457845],
[-0.06770566]]
output = (sig(nst(dot(@inputs, @weights))))

puts(print(sigd(output)))
"""