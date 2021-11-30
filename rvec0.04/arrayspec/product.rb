# Rvec product sums
# (c) Jake Leroux 2021-22 BSD Class 3

require_relative 'arraysumation'
require_relative 'arraymean'
require_relative 'arrayravel'

def func_ss(array)
    # ss == mse
    return func_mse(array)
end

def func_sp(array1, array2)
    #sp = ∑(x -Xm)(y -Ym)
    # use is 1D array
    @xmean, @ymean, @pro = func_mean(array1), func_mean(array2), 0
    func_len(array1).times do |i|
        @pro += ((array1[i] - @xmean)*(array2[i] - @ymean))
    end
    return @pro

end