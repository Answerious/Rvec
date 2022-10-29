require_relative 'matrixmulti'

def transposeMatrix(given_arr)
    return func_resize_for_dot(given_arr)
end

def getMatrixMinor(given_arr,i,j)
    #return [row[:j] + row[j+1]: for row in (m[:i]+m[i+1:])]
    layer = [] and (given_arr.length()-1).times{|n| layer << given_arr[n+1]}
    test = []
    layer.each do |row|
        return (row[-j])
    end
    #return test
    #+given_arr[i+1:])
    '''
    [[4]]
    [[3]]
    '''
end

#test_arr = [[1,2],[3,4]]
test_arr = [[1,2,3], [4,5,6], [7,8,9]]
#test_arr = [[1,2,3,4], [4,5,6,4], [7,8,9,4], [10,11,12,4]]
test_arr.length().times do |c|
    puts(print(getMatrixMinor(test_arr,0,c)))
end