# Rvec 2D array with one element to 1D array
# Rvec Ravel
# (c) Jake Leroux 2021-22 BSD Class 3

def func_ravel(array)
    @oned = []
    array.each{ |subset| subset.each{ |ele| @oned << ele} }
    return @oned
end
