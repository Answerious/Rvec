# (c) Jake Leroux 2022-23 BSD Class 3

require_relative 'matrixcreation'
require_relative 'matrixmulti'
require_relative 'nxninversion'
#require_relative '../../rvecclasshandler'


def func_polynomialx(x,y,degree=2,type=2)
    if type == 1#"intinput"
        @x = func_wrap_x(x, degree)
        @x_partial = func_wrap_x_partial(x, degree)
        @y = func_wrap_y(y)

        @resultant_one = func_dot_rule(@x_partial, @x)
        @resultant_two = func_dot_rule(@x_partial, @y)

        @inversed_resultant_one = func_inverse(@resultant_one)

        #puts(print(@resultant_two))
        #puts(print(@resultant_one))
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