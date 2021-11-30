# Rvec Linear Regression
# (c) Jake Leroux 2021-22 BSD Class 3
require_relative 'product'
 
def func_regx(plotx, ploty)
    @bx= (func_sp(plotx, ploty)/func_ss(plotx))
    @ay1 = func_mean(ploty)
    @ay = (@ay1 - ((@bx)*(func_mean(plotx))))
    return("(%d)*(x)+(%d)" % [@bx,@ay])
end

#puts(print(func_regx([1,2,3,4,5],[1,4,9,16,25])))