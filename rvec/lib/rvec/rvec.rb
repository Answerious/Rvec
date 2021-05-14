# frozen_string_literal: true
require_relative "rvec/version"
require 'matrix'
require 'rspec'

class String

  def integer?
      return true if self =~ /^[1-9]\d*(\.\d+)?$/
      false
  end

end

module Rvec

  class Random_Array_Generation

      def initialize row, column, value:
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
          @array =  @array.shift and return @array
      end

      def row
          return @row
      end

      def column 
          return @column
      end

      def print_array raw
          ans = raw
          element_randomizer
          if ans == true ; @array = @array.shift and (print(@array)) end
          if ans == false
              @row.times do |y|
                  puts("")
                  @column.times { |x| print " %.8f" % @array[x][y] } 
              end
              puts
          end

      end

  end

  class Array_1D

      def initialize ele
          @convert = ele
      end

      def rvarray1d
          @convert.each{ |el| return (el) }
      end
  end


  class Array_2D

      def initialize ele
          @given_arr, @return = ele, []
      end

      def is_array?
          @given_arr.all? { |e| (e.kind_of? Array) }
      end

      def rvarray2d
          if is_array? == true; return @given_arr end #return @given_arr end
          if is_array? == false
              @return << @given_arr and return @return
          end

      end

  end

  class T

      def initialize x
          @x = x
      end

      def t
         return @x.transpose()
      end

  end

  class Exp

      def initialize x
          @x = x
      end

      def exp
          return Math.exp(@x)
      end

  end

  class Dot

      def initialize a, b
          @a, @b, @c, @d = a, b, Matrix[[]], Matrix[[],[]]
      end

      def mut
          return (Matrix[*@a]) * (Matrix[*@b])
      end

  end

end