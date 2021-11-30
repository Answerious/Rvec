# Rvec Linear Regression Prediction
# (c) Jake Leroux 2021-22 BSD Class 3
# The x will be the x value. so 1, or 53..
# the regx is the linear regression equation

require_relative 'linearreg'
require_relative './polynomial/polynomialreg'

def func_predict(x, regx)
    return eval(regx)
end

#x = [0,1.5,2,3,4,5,6]
#y = [0,1.5,2.5,4,4,4.5,5]
#degree = 2
#regx = (func_polynomialx(x,y,degree,type=2))
#puts(print(func_predict(0,regx)))
#puts(print(regx))