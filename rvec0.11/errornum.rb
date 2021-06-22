#Error function for rvec
#(c) Jake Leroux 2021-22 BSD Class 3

def apt(x, y)
    @return = [] and y.each{|sublist| @sublist = [] and sublist.each{|item| @sublist << (x - item)}and @return << @sublist}
    return @return
end