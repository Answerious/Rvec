#Identify for expression methods in rvec module 
#(c) Jake Leroux 2021-22 BSD Class 3

require_relative 'rvec'

def size(x)
    if x.any? { |e| e.is_a?(Array) }
        d = x.group_by { |e| e.is_a?(Array) && size(e) }.keys
        return [x.size] + d.first if d.size == 1 && d.first
    else
        return [x.size]
    end
end

def matrix?(x)
    if x.any? { |e| e.is_a?(Array) }
        d = x.group_by { |e| e.is_a?(Array) && matrix?(e) }.keys
        [x.size] + d.first if d.size == 1 && d.first
        return true
    else
        #[x.size]
        false
    end
    false
end

def threeDimension?(x)
    @a = (([*x]).to_s) and @b = @a.split("")
    return true if (@b.first(3)) == ["[","[","["]
    false
end

def twoDimension?(x)
    @a = (([*x]).to_s) and @b = @a.split("")
    return true if (@b.first(2)) == ["[","["] and (@b.first(3)) != ["[","[","["]
    false
end

def oneDimension?(x)
    @a = ((x).to_s) and @b = @a.split("")
    return true if (@b.first(2)) != ["[","["] and (@b.first(1)) == ["["]
    false
end

def float?(x)
    return true if (x.is_a? Float)
    false
end

def integer?(x)
    return true if (x.is_a? Numeric) and (x.is_a? Float) == false
    false
end

def string?(x)
    if (x.is_a? Float) == true || (x.is_a? Numeric) ; return false end
    if x.match?(/^[0-9]\d*(\.\d+)?$/) || x.match?(/[A-Z]/i) == true ; return true end
    false
end

def id(x)
    @x = x
    return case
    when threeDimension?(@x) == true ; "3D"
    when twoDimension?(@x) == true ; "2D"
    when oneDimension?(@x) == true ; "1D"
    when float?(@x) == true ; "Float"
    when integer?(@x) == true ; "Integer"
    when string?(@x) == true ; "String"
    when matrix?(@x) == true ; "Matrix"
    else ; "Magical item you got there no matches!"

    end

end

describe 'Rvec : Identifier :' do

    it 'is Matrix ?' do

        a = Matrix[[3,2]] and @matrix = ((a).to_a)

        test1 = matrix?(@matrix)
        test2 = matrix?([3])
        test3 = matrix?([[3],[2]])

        expect(test1).to eq(true)
        expect(test2).to eq(false)
        expect(test3).to eq(true)

    end

    it 'is 3D Array ?' do

        test1 = threeDimension?([[[3]]])
        test2 = threeDimension?([[3],[2]])
        test3 = threeDimension?([3])

        expect(test1).to eq(true)
        expect(test2).to eq(false)
        expect(test3).to eq(false)

    end

    it 'is 2D Array ?' do
        
        test1 = twoDimension?([[[3]]])
        test2 = twoDimension?([[3],[2]])
        test3 = twoDimension?([3])

        expect(test1).to eq(false)
        expect(test2).to eq(true)
        expect(test3).to eq(false)

    end

    it 'is 1D Array ?' do

        test1 = oneDimension?([[[3]]])
        test2 = oneDimension?([[3],[2]])
        test3 = oneDimension?([3])

        expect(test1).to eq(false)
        expect(test2).to eq(false)
        expect(test3).to eq(true)

    end

    it 'is Float ?' do

        test1 = float?(3.001)
        test2 = float?(3)
        test3 = float?("3")

        expect(test1).to eq(true)
        expect(test2).to eq(false)
        expect(test3).to eq(false)

    end

    it 'is Integer ?' do

        test1 = integer?(3.001)
        test2 = integer?(3)
        test3 = integer?("3")

        expect(test1).to eq(false)
        expect(test2).to eq(true)
        expect(test3).to eq(false)

    end

    it 'is String ?' do

        test1 = string?(3.001)
        test2 = string?(3)
        test3 = string?("3")

        expect(test1).to eq(false)
        expect(test2).to eq(false)
        expect(test3).to eq(true)

    end

end