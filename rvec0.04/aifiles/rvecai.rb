require_relative('../rvec')
require 'rspec'

@inputs = [[0,1,0],[1,1,1],[1,0,1],[0,0,1]]
@output = ([[0+1+1+0]].transpose) and @output.each{|sublist| sublist.each{|item| @output = item} }
@weights = array(3,1,-1)
@weights = [[-0.51102452],[-0.45831894],[-0.36987422]]

def train(training_set_inputs, training_set_outputs, number_of_training_iterations)
    number_of_training_iterations.times do
        output = (sig(nst(dot(training_set_inputs, @weights))))
        error = apt(@output, output)
        adjustment = dot(training_set_inputs.transpose, mdt(error, sigd(output), 4))
        weights = @weights
        @weights = adt(weights, adjustment, 4)
    end
end

puts("Starting synaptic weights:")
puts(print(@weights))
puts("Trained synaptic weights:")
train(@inputs, @output, 1000)
puts(print(@weights))

describe 'Single Neuron' do
    it 'Output test' do
        @output = ([[0+1+1+0]].transpose) and @output.each{|sublist| sublist.each{|item| @output = item} }
        expect(@output).to eq(2)
    end
    it 'Sigmoid test' do
        output = sig([[-2]])
        expect(output).to eq([[0.8807970779778823]])
    end
    it 'output test2' do
        @weights = [[-0.51102452],[-0.45831894],[-0.36987422]]
        output = (sig(nst(dot([[0,1,0],[1,1,1],[1,0,1],[0,0,1]], @weights))))
        expect(output).to eq([[0.3873846937041946], [0.20763874023590087], [0.29299157252187885], [0.40857141479922193]])
    end
    it 'error test' do
        @weights = [[-0.51102452],[-0.45831894],[-0.36987422]]
        @output = ([[0+1+1+0]].transpose) and @output.each{|sublist| sublist.each{|item| @output = item} }
        output = (sig(nst(dot([[0,1,0],[1,1,1],[1,0,1],[0,0,1]], @weights))))
        error = apt(@output, output)
        expect(error).to eq([[1.6126153062958055], [1.7923612597640992], [1.7070084274781212], [1.5914285852007781]])
    end
    it 'adjustment test' do
        @weights = [[-0.51102452],[-0.45831894],[-0.36987422]]
        @output = ([[0+1+1+0]].transpose) and @output.each{|sublist| sublist.each{|item| @output = item} }
        @inputs = [[0,1,0],[1,1,1],[1,0,1],[0,0,1]]
        output = (sig(nst(dot([[0,1,0],[1,1,1],[1,0,1],[0,0,1]], @weights))))
        error = apt(@output, output)
        adjustment = dot(@inputs.transpose, mdt(error, sigd(output), 4))
        expect(adjustment).to eq([[0.6484905928224216], [0.6775903510005806], [1.0330446912679447]])
    end
    it 'network test' do
        @inputs = [[0,1,0],[1,1,1],[1,0,1],[0,0,1]]
        @output = ([[0+1+1+0]].transpose) and @output.each{|sublist| sublist.each{|item| @output = item} }
        @weights = [[-0.51102452],[-0.45831894],[-0.36987422]]
        train(@inputs, @outputs, 1000)
        expect(@weights).to eq([[1.9097816507843075], [6.90576465258349], [7.069303591263454]])
    end
end