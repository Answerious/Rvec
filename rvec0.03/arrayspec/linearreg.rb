# Rvec Linear Regression
# (c) Jake Leroux 2021-22 BSD Class 3
require_relative 'product'
 
def regx(plotx, ploty)
    @bx= (sp(plotx, ploty)/ss(plotx))
    @ay1 = mean(ploty)
    @ay = (@ay1 - ((@bx)*(mean(plotx))))
    return("(%d)*(x)+(%d)" % [@bx,@ay])
end
