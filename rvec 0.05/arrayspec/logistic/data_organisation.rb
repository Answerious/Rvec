# (c) Jake Leroux 2022-23 BSD Class 3
# Data setup for the binary logistic regression machine learning algorithm

require_relative "../../rvecbase/identifier.rb"

# Binary logistic regression therefore, max 1D for y inputs
# Rvec can only handle three dimension data, because well mathematically
# There is no need for four dimensions, as we aren't computing or taking 
# into account time in statistical models, such as logistic regression.

def _validate_y_inputs(data_type_y)
    if data_type_y == "1D"
        return nil
    else
        return "For Binary Logistic Regression, the y values are out of range. Binary Logistic Regression 
                only supports 1D arrays not %s arrays as inputted." % [data_type_y]
    end
end

# We want to know the size of the input as we can add our coef_0 
# to the data without hassle. Because we are converting 1D --> 2D
# if the inputted data is already not 2D we don't want to recall
# known data, so we allow it as a parameter here.

def _validate_x_inputs(x, data_type_x)
    if data_type_x == "1D"
        coef_0 = [] and x.length().times{ |_| coef_0 << 1}
        x_updated = [] and coef_0.length().times{ |i| x_updated << [coef_0[i], x[i]]}
    elsif data_type_x == "2D"
        coef_0 = [] and x.length().times{ |_| coef_0 << 1}
        x_updated = [] and x.length().times{ |i| x_updated << [1] + x[i]}
    else return "Error, 'x' array size not suppoted. Try 1D, or 2D entries not %s." % [data_type_x]
    end
    return x_updated
end

# We want to send the mathematical side of the logistic regression function
# the proper data, with the least work required to decode it
# we want to get both our 'x' and 'y' inputs in one array for the computer
# to easily decode it.

def setdata(x, y, type="logistic", mode="binary") # <-- Logistic & binary by default.
    data_type_x, data_type_y = func_id(x), func_id(y) 
    if type == "logistic" && mode == "binary"
        puts(print(_validate_y_inputs(data_type_y)))
        x_check = _validate_x_inputs(x, data_type_x)
        if _validate_y_inputs(data_type_y) == nil and func_id(x_check) == "2D" ; return x_check, y end
    end
end