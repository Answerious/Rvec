#Array interaction for rvec
#(c) Jake Leroux 2021-22 BSD Class 3

require_relative 'rvec'

require 'rspec'

def array(x,y,z)
    /creates array without using exact class from arraygen file/
    return (Random_Array_Generation.new(x,y,z).array)
end

def show(rvarray)
    /Experimental purposes/
    #notice how I have to switch the row and column (this is because of the size func -> identifier)
    #to see a good example of how to use this hidden function goto the arraygen file and see the 'print_array'
    @size = size(rvarray)
    @row = @size.first and @size.shift and @column = @size.first
    @column.times do |y|
        puts("")
        @row.times { |x| print " %.8f" % rvarray[x][y] } 
    end
    puts
end

def convert(rvarray)
    /converts 2D to 1D and vise versa/
    @a, @return = id(rvarray), []
    if @a == "2D" ; rvarray.each{ |el| return (el) }
    elsif @a == "1D" ; @return << rvarray and return @return
    else
    end
end

describe 'Rvec : rvarray :' do

    it 'array class' do

        test1 = (array(6,2,-1))
        test2 = (array(3,2,-1))
        test3 = (array(1,3,-1))

    end

    it 'array conversion' do

        test1 = (convert(array(2,2,-1)).length())
        test2 = (convert(array(1,1,01)).length())
        test3 = (convert([[1],[1]]).length())

        expect(test1).to eq(2)
        expect(test2).to eq(1)
        expect(test3).to eq(1)

        end

end