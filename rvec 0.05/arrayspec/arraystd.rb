# Rvec Standard Deviation for 1D array
# (c) Jake Leroux 2021-22 BSD Class 3

require_relative 'arraymean'
require_relative 'arraysumation'
include Math

def func_std(array)
    @array_mean, @array_len, @sum_list = func_mean(array), func_len(array), []
    @array_len.times{ |i| @sum_list << ((array[i].to_i - @array_mean)**2) } 
    return(sqrt(func_sum(@sum_list)/@array_len))
end