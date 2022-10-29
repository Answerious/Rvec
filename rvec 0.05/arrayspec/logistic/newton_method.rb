# (c) Jake Leroux 2022-23 BSD Class 3
# Newton's Method Optimiser for Binary Logistic Regression

require_relative "logistic_initialisation"
require_relative "../polynomial/nxninversion"
require_relative "../polynomial/matrixinverse"
require_relative "../../rvecbase/negative"

def newtons_method(model_data)
    likelihood = model_data["likelihood"]
    lr = model_data["learning_rate"]
    beta = model_data["beta"]
    epoch = model_data["epoch"]
    train_x = model_data["train_x"]
    train_y = model_data["train_y"]

    epoch = 0

    while likelihood < 0.95 && epoch <= 35000

        logit = func_dot_rule(train_x, beta)
        proba = func_sig(logit)

        likelihood = 1
        proba.length().times do |i|
            if train_y[i] == 1 ; likelihood = likelihood * proba[i][0]
            elsif train_y[i] == 0 ; likelihood = likelihood * (1-proba[i][0]) ; end
        end

        zeros = []
        train_x.length().times{ |_| sub_col = [] and train_x.length().times{ |_| sub_col << 0} and zeros << sub_col }
        hessian_step_1 = [] and proba.length().times{ |i| hessian_step_1 << [1 - proba[i][0]] }
        hessian_step_2 = [] and hessian_step_1.length().times{ |i| hessian_step_2 << [hessian_step_1[i][0] * proba[i][0]] }
        zeros.length().times{ |i| zeros[i][i] = hessian_step_2[i][0] } and diagonal_weights = zeros
        hessian_step_3 = func_dot_rule(func_dot_rule(func_nst(train_x).transpose(), diagonal_weights), train_x)
        zeros = []
        hessian_step_3.length().times{ |_| sub_col = [] and hessian_step_3.length().times{ |_| sub_col << 0 } and zeros << sub_col }
        zeros.length().times{ |i| zeros[i][i] = 1 } and hessian_zeros = zeros
        hessian_step_4 = []

        hessian_step_3.length().times do |i|
            sub_col = []
            hessian_step_3.length().times do |j|
                sub_col << (hessian_step_3[i][j] - zeros[i][j])*-1
            end
            hessian_step_4 << sub_col
        end
        
        hessian = func_inverse(hessian_step_4)
        
        k_step_1 = [] and train_y.length().times{ |i| k_step_1 << [train_y[i][0] - proba[i][0]] }
        k_step_2 = func_dot_rule(hessian, train_x.transpose())

        k = func_dot_rule(k_step_2, k_step_1)

        new_beta = [] and k.length().times { |i| new_beta << [k[i][0] + beta[i][0]] } and beta = new_beta

        epoch += 1

    end

    return beta, likelihood

end
