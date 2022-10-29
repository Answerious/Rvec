# (c) Jake Leroux 2022-23 BSD Class 3
# Logistic Regression for Rvec

require_relative "gradient_method"
require_relative "newton_method"

def func_logistic(x, y, method="n", type="binary")

    if type == "binary"

        data = setdata(x, y)
        initial_model = (_init_logistic(data))

        if method == "n"
            return newtons_method(initial_model)

        elsif method == "g"
            return gradient_ascent(initial_model)

        else return "Method enterd not valid. use either 'g' or 'n' not '%s'." % [method]
        end
    else 
        return "Multi Logistic Regression not available yet, try 'binary' instead."
    end
end