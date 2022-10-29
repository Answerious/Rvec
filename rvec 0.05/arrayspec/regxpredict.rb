# Rvec Linear Regression Prediction
# (c) Jake Leroux 2021-22 BSD Class 3
# The x will be the x value. so 1, or 53..
# the regx is the linear regression equation

require_relative 'linearreg'
require_relative './polynomial/polynomialreg'

def func_predict(x, regx)
    return eval(regx)
end

