# (c) Jake Leroux 2022-23 BSD Class 3
# Initial setup before our logitstic optimisers.

require_relative "data_organisation.rb"
require_relative "../polynomial/matrixmulti.rb"
require_relative "../../rvecbase/sigmoid.rb"

# Setup the universal first steps before our optimisers
# and return the values inside a hash for storage.


def _init_logistic(data)
    train_x, train_y = data[0], data[1]
    beta = [] and train_x[0].length().times{ |_| beta << [0.5]}
    logit = func_dot_rule(train_x, beta)
    proba = func_sig(logit)
    likelihood = 1
    proba.length().times do |i|
        if train_y[i] == 1 ; likelihood = likelihood * proba[i][0]
        elsif train_y[i] == 0 ; likelihood = likelihood * (1-proba[i][0]) ; end
    end
    

    # We want to make sure we have as many similarities for our data as possible
    # we also want a few data pieces to be universally constant, such as the likelihood,
    # learning rate, logit, probability, our beta values, or basically our model coefs,
    # and our epoch numbers. I have them set to 35000, as it's the best one for both
    # accuracy, and time complexity.

    common_information = {"likelihood" => likelihood,
                          "learning_rate" => 0.001,
                          "probability" => proba,
                          "logit" => logit,
                          "beta" => beta,
                          "epoch" => 0,
                          "train_x" => train_x,
                          "train_y" => train_y}
    return common_information
end

/
data = setdata(test_x, test_y)

initial_model = (_init_logistic(data))

puts(print(initial_model["likelihood"]))
/