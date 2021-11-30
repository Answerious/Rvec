require_relative '../rvec'

# Initialize a network
def initialize_network(n_inputs, n_hidden, n_outputs)
    @network1, network, @network2 = list(), list(), list()
    (n_hidden).times{@c = list() and (n_inputs+1).times{ @c << rand() } and @network1 << {'weights':@c}}
    (n_outputs).times{@c = list() and (n_hidden + 1).times{ @c << rand() } and @network2 << {'weights':@c}}
    network << @network1 and network << @network2
    return network
end

# Calculate neuron activation for an input
def activate(weights, inputs)
    activation = weights[-1]
    ((len(weights))-1).times do |i|
        activation += weights[i] * inputs[i]
    end
    return activation
end

# Transfer neuron activation
def transfer(activation)
    return 1.0 / (1.0 + exp(-activation))
end

# Forward propagate input to a network output
def forward_propagate(network, row)
    inputs = row
    network.each do |layer|
        new_inputs = list()
        layer.each do |neuron|
            activation = activate(neuron[:weights], inputs)
            neuron[:output] = transfer(activation)
            new_inputs << (neuron[:output])
        end
        inputs = new_inputs
    end
    return inputs
end

# Calculate the derivative of an neuron output
def transfer_derivative(output)
    return (output * (1.0 - output))
end

# Backpropagate error and store in neurons
def backward_propagate_error(network, expected)
    ((len(network)).times).reverse_each do |i|
        layer = network[i]
        errors = list()
        if i != (len(network)-1)
            (len(layer)).times do |j|
                error = 0.0
                network[i+1].each do |neuron|
                    error += (neuron[:weights][j] * neuron[:delta])
                end
                errors << (error)
            end
        else
            (len(layer)).times do |j|
                neuron = layer[j]
                errors << (expected[j] - neuron[:output])
            end
        end
        (len(layer)).times do |j|
            neuron = layer[j]
            neuron[:delta] = errors[j] * transfer_derivative(neuron[:output])
        end
    end
end

# Update network weights with error
def update_weights(network, row, l_rate)
    len(network).times do |i|
        inputs = row[0...-1]
        if i != 0 
            inputs = list() and network[i-1].each{|neuron| inputs << neuron[:output]}
        end
        network[i].each do |neuron|
            (len(inputs)).times do |j|
                neuron[:weights][j] += l_rate * neuron[:delta] * inputs[j]
            end
            neuron[:weights][-1] += l_rate * neuron[:delta]
        end
    end
end

# Train a network for a fixed number of epochs
def train_network(network, train, l_rate, n_epoch, n_outputs)
    n_epoch.times do |epoch|
        sum_error = 0
        train.each do |row|
            outputs = forward_propagate(network, row)
            expected = list() and (n_outputs.times { |x| expected << 0} )
            expected[row[-1]] = 1
            (len(expected).times{|i| sum_error += [(expected[i]-outputs[i])**2].sum})
            backward_propagate_error(network, expected)
            update_weights(network, row, l_rate)
        end
        puts(print('>epoch=%d, lrate=%.3f, error=%.3f' % [epoch, l_rate, sum_error]))
    end
end

def predict(network, row)
    outputs = forward_propagate(network, row)
    return outputs.index(outputs.max)
end

@dataset = [[1,0],
            [2,1],
            [3,2]]
@n_inputs = (@dataset[0]).length() -1
@n_outputs = @dataset.each{|row| [row[-1]]}.length()

def start()
    @network = initialize_network(@n_inputs, 5, @n_outputs)
    train_network(@network, @dataset, 0.015, 15000, @n_outputs)
    @dataset.each do |row|
        prediction = predict(@network, row)
        puts(print('Expected=%d, Got=%d' % [row[-1], prediction]))
    end
end

start()

/
find the reversed function for
python OR make rvec have one
reversed.each works but I want to add reversed like python
use identifier for array shitt
/