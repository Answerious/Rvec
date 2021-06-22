#Generation of arrays in rvec module 
#(c) Jake Leroux 2021-22 BSD Class 3

require 'rspec'

class Random_Array_Generation

    def initialize row, column, value
        @row, @column, @value = row, column, value
        @size = @row*@column and @array = [] and @c = []
    end

    def random_column num:
        @ran, @c = num, []
        @column.times{(@c << @ran+@value) } and return @c
    end

    def element_randomizer
        @array = Array.new(@column) {Array(@row.times.map{random_column(num:rand())})}
    end

    def array
        element_randomizer
        @array = @array.shift and return @array
    end

    def row
        return @row
    end

    def column 
        return @column
    end

    def print_array
        element_randomizer
        @row.times do |y|
            puts("")
            @column.times { |x| print " %.8f" % @array[x][y] } 
        end
        puts
    end

end


describe 'Rvec : Array_Generation:' do

    it 'Creation' do

        test1 = (Random_Array_Generation.new(2,2,-1).array)
        test2 = (Random_Array_Generation.new(3,1,-1).print_array)

    end

end