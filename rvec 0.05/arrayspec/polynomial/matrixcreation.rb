# (c) Jake Leroux 2022-23 BSD Class 3

def func_autowrap(x,y,degree=2)
    return nil
end

def func_wrap_x(x, degree)
    basic_matrix = []
    x.length().times do |i|
        layer = [] and layer << 1.0 and layer << x[i].to_f
        degree.times do |j|
            if degree >= 2 and layer.length() < (degree+1) then (layer << ((x[i]).to_f ** (j+2))) else nil end
        end
        basic_matrix << layer
    end
    return basic_matrix
end

def func_wrap_x_partial(x, degree)
    basic_matrix = []
    first_row = [] and x.length.times{ |i| first_row << 1.0 } and basic_matrix << first_row
    (degree).times do |i|
        layer = []
        x.length().times do |j|
            layer << (x[j] ** (i+1)).to_f
        end 
        basic_matrix << layer
    end
    return basic_matrix
end

def func_wrap_y(y)
    basic_matrix = []
    y.length().times {|i| layer = [] and layer << y[i].to_f and basic_matrix << layer}
    return basic_matrix
end

