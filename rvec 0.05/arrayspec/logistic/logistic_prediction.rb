# (c) Jake Leroux 2022-23 BSD Class 3

require_relative "data_organisation"
require_relative "../../rvecbase/sigmoid.rb"
require_relative "../polynomial/matrixmulti.rb"

def func_predictlog(model, test_x, test_y, show=true)
    prediction_data = setdata(test_x, test_y)
    test_x, test_y = prediction_data[0], prediction_data[1]

    log_odds = func_dot_rule(test_x, model[0])
    threshold = 0.5
    proba = func_sig(log_odds)

    predicted_y = [] and proba.length().times{ |i| if proba[i][0] >= threshold ; predicted_y << 1 else ; predicted_y << 0 ; end }

    if show == true
        tp, fp, tn, fn = 0, 0, 0, 0
        predicted_y.length().times do |i|
            if predicted_y[i] != test_y[i]
                if predicted_y[i] == 1 ; fp += 1
                elsif predicted_y[i] == 0 ; fn += 1 ; end
            elsif predicted_y[i] == test_y[i]
                if predicted_y[i] == 1 ; tp += 1
                elsif predicted_y[i] == 0; tn += 1 ; end
            end
        end

        stats = {"true positive" => tp,
                 "false positive" => fp,
                 "true negative" => tn,
                 "false negative" => fn,
                 "accuracy" => ((tp+tn)/proba.length())}
        
        return stats
    end

end