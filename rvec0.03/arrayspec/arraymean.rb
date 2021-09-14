# Rvec array mean number
# (c) Jake Leroux 2021-22 BSD Class 3

require_relative "../rvecbase/identifier"
require_relative "../rvecbase/helpercommands"
require_relative "arraysumation"
require_relative "arrayravel"

# find the mean number of the array
def mean(array)
    # mean = (∑ x) / n
    @len, @sum = len(array), sum(array)
    return ((@sum+0.00)/(@len+0.00))
end

# the mse means -> mean squared number. 
def mse(array)
    # Calculates the mean of the array
    @len, @sum, @mse = len(array), sum(array), 0
    @mean = ((@sum+0.00)/(@len+0.00))
    # to apporch this we need to add for the following
    # a 1D apporch <-- only because we are using x,
    # y coords not array values. If a 2D is entered
    # a use can use the ravel function
    # mse = ∑(x -Xm)**2
    array.each{ |ele| @mse += ((ele-@mean)**2) }
    return (@mse+0.00)
end