#sigmoid function for rvec
#(c) Jake Leroux 2021-22 BSD Class 3

require_relative 'rvec'

"""creates this '1.0/(1.0+ exp(x))' function"""

def sig(x)
    /Only for 2D array atleast for now/
    uid, @return = id(x), []
    x.each{|subset| @subset = [] and subset.each{|item| @subset << (1.0/(1.0+Math.exp(item)))} and @return << @subset}
    return @return
end

"""
@inputs = [[0,1,0],[1,1,1],[1,0,1],[0,0,1]]
@weights = [[-0.54944709],
[-0.26457845],
[-0.06770566]]

a = sig(nst(dot(@inputs, @weights)))
#print(a)
"""