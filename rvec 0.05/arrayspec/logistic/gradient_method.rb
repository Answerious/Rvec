# (c) Jake Leroux 2022-23 BSD Class 3
# Gradient Ascent Optimisation Method for Binary Logistic Regression


require_relative "logistic_initialisation"

def gradient_ascent(model_data)
    likelihood = model_data["likelihood"]
    lr = model_data["learning_rate"]
    beta = model_data["beta"]
    epoch = model_data["epoch"]
    train_x = model_data["train_x"]
    train_y = model_data["train_y"]

    while likelihood < 0.95 && epoch <= 35000

        logit = func_dot_rule(train_x, beta)
        proba = func_sig(logit)

        likelihood = 1
        proba.length().times do |i|
            if train_y[i] == 1 ; likelihood = likelihood * proba[i][0]
            elsif train_y[i] == 0 ; likelihood = likelihood * (1-proba[i][0]) ; end
        end

        first_d_step_1 = [] and proba.length().times{ |i| first_d_step_1 << [train_y[i] - proba[i][0]]}
        first_derivative = func_dot_rule(train_x.transpose(), first_d_step_1)
        
        beta_update = [] and first_derivative.length().times{ |i| beta_update << [lr * first_derivative[i][0]]}
        new_beta = [] and beta.length().times{ |i| new_beta << [beta[i][0] + beta_update[i][0]] } and beta = new_beta

        epoch += 1

    end

    return beta, likelihood
    
end