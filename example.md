# Examples for Artifical Intelligence
- The following is showing a benchmark single layer artifical intelligence algorithm
- Each algorithm MUST complete 1000 training iterations
# <img alt="network" src="sln.png" height="110">

# Rvec vs NumPy
Please not Rvec is [0.0.2] and two weeks old, whereas NumPy is over 20 years developed

## Rvec:
```ruby
@inputs = [[0,1,0],[1,1,1],[1,0,1],[0,0,1]]
@output = ([[0+1+1+0]].transpose) and @output.each{|sublist| sublist.each{|item| @output = item} }
@weights = array(3,1,-1)

def train(training_set_inputs, training_set_outputs, number_of_training_iterations)
    number_of_training_iterations.times do
        output = (sig(nst(dot(training_set_inputs, @weights))))
        error = apt(@output, output)
        adjustment = dot(training_set_inputs.transpose, mdt(error, sigd(output), 4))
        weights = @weights
        @weights = adt(weights, adjustment, 4)
    end
end
```
## NumPy:
```python
class NN():
    def __init__(self):
        plusminus = 1
        self.synaptic_weights = rn.random((3, 1)) -1

    def __sigmoid(self, x):
        return 1/ (1 + exp(-x))

    def __sigmoid_derivative(self, x):
        return x * (1 -x)

    def train(self, training_set_inputs, training_set_outputs, number_of_training_iterations):
        for iteration in range(number_of_training_iterations):
            output = self.think(training_set_inputs)
            error = training_set_outputs - output
            adjustment = dot(training_set_inputs.T, error * self.__sigmoid_derivative(output))
            self.synaptic_weights += adjustment

    def think(self, inputs):
        return self.__sigmoid(dot(inputs, self.synaptic_weights))
        
```
## Overall
Overall NumPy is more robust than Rvec as of now, NumPy is faster than Rvec, although Rvec is the fastest framework in ruby and the only one built for artifical intelligence development. 
- The test cases in NumPy(Python) take 0.567 seconds to complete and run
- The test cases in Rvec(Ruby) take 0.932 seconds to complete and run
- Note that the starting weights are not known its pure RNG for this example
