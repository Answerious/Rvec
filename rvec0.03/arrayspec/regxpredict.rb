# Rvec Linear Regression Prediction
# (c) Jake Leroux 2021-22 BSD Class 3
# The x will be the x value. so 1, or 53..
# the regx is the linear regression equation

require_relative 'linearreg'

def predict(x, regx)
    return eval(regx)
end

lie = regx([1,2,3,4,5],[1,4,9,16,25])

puts(print(predict(5, lie)))