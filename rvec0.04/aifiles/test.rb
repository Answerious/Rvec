@inputs = [[0,1,0],[1,1,1],[1,0,1],[0,0,1]]
@weights = [[-0.54944709],
[-0.26457845],
[-0.06770566]]
@output = ([[0+1+1+0]].transpose) and @output.each{|sublist| sublist.each{|item| @output = item} }

require_relative '../rvec'

#def apt(error, sigdout)

#end

output, @return = (sig(nst(dot(@inputs, @weights)))), []
output.each{|sublist| @sublist = [] and sublist.each{|item| @sublist << (@output - item)}and @return << @sublist}
error = @return

puts(print(error))

#adjustment = dot(training_set_inputs.transpose, (error * sigd(output)))


def initialize_network
    @network = []
    @hidden_layer = [{'weights':[rand()]}]
end