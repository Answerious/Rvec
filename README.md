# <img alt="rvec" src="rvec.PNG" height="45">

# Rvec

Mathematical library for ruby (Not fully finished)

## Installation

DOWNLOAD FILES AND IMPORT RVEC
THE GEM INSTALL WILL COME SOON
THE INFORMATION BELOW IS FOR WHEN
THE GEM BECOMES PUBLICALLY AVAILABLE

```ruby
gem 'rvec'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rvec

## Usage
lol
## Rvec functions
Creating random 2D array with custom size:
the array is a 3,1 array with an starting value of 0->1 -1
```ruby
array(3,1,-1)
```
Identifying Rvec and normal elements:
note this works for Matrices, 3D-1D arrays, floats,
strings, and integers
```ruby
id(3.00)
```
Length:
Get the length of a string, integer, array..
```ruby
len("abc")
```
Reverse:
Reverse order a array
```ruby
reverse([1,3,2,4]
```
Creating [] or list:
```ruby 
list()
```
Creating {} or dictionary:
```ruby
set()
```
Array multiplication:
please note the sizes have to work with each other
or else there will be an error
```ruby
dot(array(3,1,-1),array(4,3,0))
```
Exponential function:
note this works with 3D-1D arrays and matrices
```ruby
exp(array(3,1,-1))
```
Converting:
converts 2D to 1D and 1D to 2D
```ruby
convert([[2]])
```
Mutliply each element of a 2D array with corresponding element of another array:
note the '4' at the end is for the shift value
```ruby
mdt(array(3,1,-1),(array(3,1,2),4)
```
Divide each element of a 2D array with corresponding element of another array:
note the '4' at the end if for the shift value
```ruby
ddt(array(3,1,-1),array(3,1,2),4)
```
Add each element of a 2D array with corresponding element of another array:
note the '4' at the end is for the shift value
```ruby
adt(array(3,1,-1),array(3,1,2),4)
```
Subtract each element of a 2D array with corresponding element of another array:
note the '4' at the end is for the shift value
```ruby
sdt(array(3,1,-1),array(3,1,2),4)
```
Mutliply all elements in a 3D-1D array by '-1':
```ruby
nst(array(3,1,-1))
```
Mutliply all elements in a 3D-1D array by '1':
```ruby
pst(array(3,1,-1))
```
## Advanced Mathematics
Sigmoid, Sigmoid_derivatives, Errornum are in the advanced mathematics area

sig is the same as '1.0/(1.0+ exp(-x))'
```ruby
@inputs = [[0,1,0],[1,1,1],[1,0,1],[0,0,1]]
@weights = [[-0.54944709],
            [-0.26457845],
            [-0.06770566]]
sig(nst(dot(@inputs, @weights)))
```
sigd is the same as 'x * (1 -x)'
```ruby
@inputs = [[0,1,0],[1,1,1],[1,0,1],[0,0,1]]
@weights = [[-0.54944709],
            [-0.26457845],
            [-0.06770566]]
output = (sig(nst(dot(@inputs, @weights))))
sigd(output)
```
errornum is apt
```ruby
@inputs = [[0,1,0],[1,1,1],[1,0,1],[0,0,1]]
@output = ([[0+1+1+0]].transpose) and @output.each{|sublist| sublist.each{|item| @output = item} }
@weights = [[-0.54944709],
            [-0.26457845],
            [-0.06770566]]
                        
output = sig(nst(dot(@inputs, @weights)))
apt(@output, output)
```

## Artifical Intelligence
Note: The rvec framework is being compared to the 'NumPy' framework

The following example is a super easy and simple training algorithm written in rvec
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
puts("Starting synaptic weights:")
puts(print(@weights))
puts("Trained synaptic weights:")
train(@inputs, @output, 1000)
puts(print(@weights))
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Answerious/Rvec. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/Answerious/Rvec/blob/master/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the Rvec project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/Answerious/Rvec/blob/master/CODE_OF_CONDUCT.md).
