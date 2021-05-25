#Dot(mutmal) function for rvec
#(c) Jake Leroux 2021-22 BSD Class 3

require_relative 'rvec'

def dot(x, y)
    return ((Matrix[*x]) * (Matrix[*y])).to_a
end

describe 'Rvec : Functions :' do

    it 'Dot' do
        inputs = [[0,1,0],[1,1,1],[1,0,1],[0,0,1]]
        weights = [[-0.54944709], 
            [-0.26457845],
            [-0.06770566]]
        test1 = dot(inputs, weights)

        expect(test1).to eq([[-0.26457845], [-0.8817312], [-0.61715275], [-0.06770566]])

    end

end
