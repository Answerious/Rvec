require_relative 'rvec'

@inputs = [[0,1,0],[1,1,1],[1,0,1],[0,0,1]]
@output = ([[0+1+1+0]].transpose) and @output.each{|sublist| sublist.each{|item| @output = item} }
@weights = array(3,1,-1)

def think(inputs)
    return (sig(nst(dot(inputs, @weights))))
end

def train(training_set_inputs, training_set_outputs, number_of_training_iterations)
    number_of_training_iterations.times do
        output = think(training_set_inputs)
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