# String Conversion (RVEC) (c) Jake Leroux 2021-22
=begin
    
require_relative 'numeric'
require_relative 'identifier'
    
@passthr0 = id(x)

def intconv(x)
    if @passthr0 == "Float" || "Integer"
        if x.integer? == true
            return (x.to_i)
        else
        end

    elsif @passthr0 == "1D"
        x.each do |item|
            if item.integer? == true
                return (x.to_i)
            else
            end

        end
    elsif @passthr0 == "String"
        if x.integer? == true
            return (x.to_i)
        else
        end

    else
        puts(print("NOT 1D, STR, FLOAT, OR INT"))
    end
end

def strconv(x)
    if @passthr0 == "Float" || "Integer"
        if x.integer? == true
            return (x.to_s)
        else
        end
    
    elsif @passthr0 == "1D"
        x.each do |item|
            if item.integer? == true
                return (x.to_s)
            else
            end
    
        end
    elsif @passthr0 == "String"
        if x.integer? == true
            return (x.to_s)
        else
        end
    
    else
        puts(print("NOT 1D, STR, FLOAT, OR INT"))
    end
end

def fltconv(x)
    if @passthr0 == "Float" || "Integer"
        if x.integer? == true
            return (x.to_f)
        else
        end
    
    elsif @passthr0 == "1D"
        x.each do |item|
            if item.integer? == true
                return (x.to_f)
            else
            end
    
        end
    elsif @passthr0 == "String"
        if x.integer? == true
            return (x.to_f)
        else
        end
    
    else
        puts(print("NOT 1D, STR, FLOAT, OR INT"))
    end
end
=end