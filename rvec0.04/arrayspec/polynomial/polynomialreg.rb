require_relative 'matrixcreation'
require_relative 'matrixmulti'
require_relative 'matrixinverse2-6'
#require_relative '../../rvecclasshandler'

#1 = "intinput"
#2 = "strinput"

def func_polynomialx(x,y,degree=2,type=2)
    if type == 1#"intinput"
        @x = func_wrap_x(x, degree)
        @x_partial = func_wrap_x_partial(x, degree)
        @y = func_wrap_y(y)

        @resultant_one = func_dot_rule(@x_partial, @x)
        @resultant_two = func_dot_rule(@x_partial, @y)

        @inversed_resultant_one = func_inverse(@resultant_one)
        @resultant = func_dot_rule(@inversed_resultant_one, @resultant_two)

        return @resultant

    elsif type == 2#"strinput"
        @x = func_wrap_x(x, degree)
        @x_partial = func_wrap_x_partial(x, degree)
        @y = func_wrap_y(y)

        @resultant_one = func_dot_rule(@x_partial, @x)
        @resultant_two = func_dot_rule(@x_partial, @y)

        @inversed_resultant_one = func_inverse(@resultant_one)
        @resultant = func_dot_rule(@inversed_resultant_one, @resultant_two)
        @end = []
        @end << "("+@resultant[0][0].to_s+")"

        (@resultant.length()-1).times do |i|
            @end << ("(("+@resultant[i+1][0].to_s+")*(x**%d))" % [i+1])
        end
        @printable = @end[0]
        (@end.length()-1).times do |i|
            @printable += "+"+@end[i+1]
        end
        return @printable
    else
        return "invalid type, i or s"
    end
end

#x = [0,1.5,2,3,4,5,6]
#y = [0,1.5,2.5,4,4,4.5,5]
#degree = 2
#puts(print(func_polynomialx(x,y,degree,type=s)))
