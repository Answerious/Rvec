require_relative 'rvec'

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
@n_inputs = len(@dataset[0]) -1
@n_outputs = len(@dataset.each{|row| [row[-1]]})
@network = [[{:weights=>[0.7025170042182199, 0.8174769472449182]}, {:weights=>[0.23487670981352315, 0.31777634628574525]}, {:weights=> [0.33273572339839064, 0.23374649656949142]}, {:weights=> [0.23038988773020275, 0.606958530759886]}, {:weights=> [0.8284491637274093, 0.9905571694067499]}, {:weights=> [0.0610285688761516, 0.6290834617020696]}, {:weights=> [0.6286868129062982, 0.16100093322964026]}], [{:weights=> [0.7794242098449549, 0.14968150175095285, 0.7889193574325876, 0.10640727831872898, 0.9201615365055188, 0.13819800662684922, 0.3421510017100874, 0.27905381291351417]}, {:weights=> [0.3168049109340819, 0.444801978498954, 0.5672173496575256, 0.7260195299971747, 0.9638783206915414, 0.9601812238531415, 0.5638906321556597, 0.5958437711292114]}, {:weights=> [0.19372776062662322, 0.7801534325003686, 0.16485017440170546, 0.5737189937039396, 0.29256397890167096, 0.05996275848967769, 0.8485582505600736, 0.43523986474870013]}]]

def start()
    #@network = initialize_network(@n_inputs, 7, @n_outputs)
    train_network(@network, @dataset, 0.015, 15000, @n_outputs)
    @dataset.each do |row|
        prediction = predict(@network, row)
        puts(print('Expected=%d, Got=%d' % [row[-1], prediction]))
    end
end

start()
#puts(print(@n_outputs))

/
find the reversed function for
python OR make rvec have one
reversed.each works but I want to add reversed like python
use identifier for array shitt
/
