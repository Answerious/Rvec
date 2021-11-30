#test_arr = [[7.0, 21.5, 92.25, 443.375], [21.5, 92.25, 443.375, 2279.0625], [92.25, 443.375, 2279.0625, 12207.59375], [443.375, 2279.0625, 12207.59375, 67181.390625]]
#test_arr = [[1.0,2.0,3.0],[3.0,2.0,3.0],[1.0,2.0,2.0]]
#test_arr = [[1.0,2.0],[3.0,4.0]]

require_relative 'matrixmulti'

def func_inverse(given_arr)
    check = func_check_input(given_arr)
    type = func_gather_size(check,given_arr)
    if type == [2, 2] 
        return func_inverse2x2(given_arr)
    elsif type == [3, 3]
        return func_inverse3x3(given_arr)
    elsif type == [4, 4]
        return func_inverse4x4(given_arr)
    else
        return ("Unsupported size")
    end
end

def func_4x4_det(given_arr)
    det = 0 and det1 = [given_arr[0][0]*given_arr[1][1]*given_arr[2][2]*given_arr[3][3] +
    given_arr[0][0]*given_arr[1][2]*given_arr[2][3]*given_arr[3][1] + 
    given_arr[0][0]*given_arr[1][3]*given_arr[2][1]*given_arr[3][2] +
    given_arr[0][1]*given_arr[1][0]*given_arr[2][3]*given_arr[3][2] + 
    given_arr[0][1]*given_arr[1][2]*given_arr[2][0]*given_arr[3][3] + 
    given_arr[0][1]*given_arr[1][3]*given_arr[2][2]*given_arr[3][0] +
    given_arr[0][2]*given_arr[1][0]*given_arr[2][1]*given_arr[3][3] + 
    given_arr[0][2]*given_arr[1][1]*given_arr[2][3]*given_arr[3][0] + 
    given_arr[0][2]*given_arr[1][3]*given_arr[2][0]*given_arr[3][1] +
    given_arr[0][3]*given_arr[1][0]*given_arr[2][2]*given_arr[3][1] + 
    given_arr[0][3]*given_arr[1][1]*given_arr[2][0]*given_arr[3][2] + 
    given_arr[0][3]*given_arr[1][2]*given_arr[2][1]*given_arr[3][0] - 
    given_arr[0][0]*given_arr[1][1]*given_arr[2][3]*given_arr[3][2] - 
    given_arr[0][0]*given_arr[1][2]*given_arr[2][1]*given_arr[3][3] - 
    given_arr[0][0]*given_arr[1][3]*given_arr[2][2]*given_arr[3][1] -
    given_arr[0][1]*given_arr[1][0]*given_arr[2][2]*given_arr[3][3] - 
    given_arr[0][1]*given_arr[1][2]*given_arr[2][3]*given_arr[3][0] - 
    given_arr[0][1]*given_arr[1][3]*given_arr[2][0]*given_arr[3][2] -
    given_arr[0][2]*given_arr[1][0]*given_arr[2][3]*given_arr[3][1] - 
    given_arr[0][2]*given_arr[1][1]*given_arr[2][0]*given_arr[3][3] - 
    given_arr[0][2]*given_arr[1][3]*given_arr[2][1]*given_arr[3][0] -
    given_arr[0][3]*given_arr[1][0]*given_arr[2][1]*given_arr[3][2] - 
    given_arr[0][3]*given_arr[1][1]*given_arr[2][2]*given_arr[3][0] - 
    given_arr[0][3]*given_arr[1][2]*given_arr[2][0]*given_arr[3][1]]
    det1.each{|ele| det = ele}

    return det
end

def func_3x3_det(given_arr)
    det = 0 and det1 = [given_arr[0][0]*given_arr[1][1]*given_arr[2][2] +
    given_arr[1][0]*given_arr[2][1]*given_arr[0][2] + 
    given_arr[2][0]*given_arr[0][1]*given_arr[1][2] - 
    given_arr[0][0]*given_arr[2][1]*given_arr[1][2] - 
    given_arr[2][0]*given_arr[1][1]*given_arr[0][2] -
    given_arr[1][0]*given_arr[0][1]*given_arr[2][2]]
    det1.each{|ele| det = ele}

    return det
end

def func_2x2_det(given_arr)
    cono = given_arr[0][0]*given_arr[1][1] - given_arr[0][1]*given_arr[1][0]
    if cono !=0 then det = cono else det = 1 end
    return det
end

def func_inverse4x4(given_arr)
    detA = func_4x4_det(given_arr)

    b00 = given_arr[1][1]*given_arr[2][2]*given_arr[3][3] + given_arr[1][2]*given_arr[2][3]*given_arr[3][1] + given_arr[1][3]*given_arr[2][1]*given_arr[3][2] - given_arr[1][1]*given_arr[2][3]*given_arr[3][2] - given_arr[1][2]*given_arr[2][1]*given_arr[3][3] - given_arr[1][3]*given_arr[2][2]*given_arr[3][1]
    b01 = given_arr[0][1]*given_arr[2][3]*given_arr[3][2] + given_arr[0][2]*given_arr[2][1]*given_arr[3][3] + given_arr[0][3]*given_arr[2][2]*given_arr[3][1] - given_arr[0][1]*given_arr[2][2]*given_arr[3][3] - given_arr[0][2]*given_arr[2][3]*given_arr[3][1] - given_arr[0][3]*given_arr[2][1]*given_arr[3][2]
    b02 = given_arr[0][1]*given_arr[1][2]*given_arr[3][3] + given_arr[0][2]*given_arr[1][3]*given_arr[3][1] + given_arr[0][3]*given_arr[1][1]*given_arr[3][2] - given_arr[0][1]*given_arr[1][3]*given_arr[3][2] - given_arr[0][2]*given_arr[1][1]*given_arr[3][3] - given_arr[0][3]*given_arr[1][2]*given_arr[3][1]
    b03 = given_arr[0][1]*given_arr[1][3]*given_arr[2][2] + given_arr[0][2]*given_arr[1][1]*given_arr[2][3] + given_arr[0][3]*given_arr[1][2]*given_arr[2][1] - given_arr[0][1]*given_arr[1][2]*given_arr[2][3] - given_arr[0][2]*given_arr[1][3]*given_arr[2][1] - given_arr[0][3]*given_arr[1][1]*given_arr[2][2]

    b10 = given_arr[1][0]*given_arr[2][3]*given_arr[3][2] + given_arr[1][2]*given_arr[2][0]*given_arr[3][3] + given_arr[1][3]*given_arr[2][2]*given_arr[3][0] - given_arr[1][0]*given_arr[2][2]*given_arr[3][3] - given_arr[1][2]*given_arr[2][3]*given_arr[3][0] - given_arr[1][3]*given_arr[2][0]*given_arr[3][2]
    b11 = given_arr[0][0]*given_arr[2][2]*given_arr[3][3] + given_arr[0][2]*given_arr[2][3]*given_arr[3][0] + given_arr[0][3]*given_arr[2][0]*given_arr[3][2] - given_arr[0][0]*given_arr[2][3]*given_arr[3][2] - given_arr[0][2]*given_arr[2][0]*given_arr[3][3] - given_arr[0][3]*given_arr[2][2]*given_arr[3][0]
    b12 = given_arr[0][0]*given_arr[1][3]*given_arr[3][2] + given_arr[0][2]*given_arr[1][0]*given_arr[3][3] + given_arr[0][3]*given_arr[1][2]*given_arr[3][0] - given_arr[0][0]*given_arr[1][2]*given_arr[3][3] - given_arr[0][2]*given_arr[1][3]*given_arr[3][0] - given_arr[0][3]*given_arr[1][0]*given_arr[3][2]
    b13 = given_arr[0][0]*given_arr[1][2]*given_arr[2][3] + given_arr[0][2]*given_arr[1][3]*given_arr[2][0] + given_arr[0][3]*given_arr[1][0]*given_arr[2][2] - given_arr[0][0]*given_arr[1][3]*given_arr[2][2] - given_arr[0][2]*given_arr[1][0]*given_arr[2][3] - given_arr[0][3]*given_arr[1][2]*given_arr[2][0]

    b20 = given_arr[1][0]*given_arr[2][1]*given_arr[3][3] + given_arr[1][1]*given_arr[2][3]*given_arr[3][0] + given_arr[1][3]*given_arr[2][0]*given_arr[3][1] - given_arr[1][0]*given_arr[2][3]*given_arr[3][1] - given_arr[1][1]*given_arr[2][0]*given_arr[3][3] - given_arr[1][3]*given_arr[2][1]*given_arr[3][0]
    b21 = given_arr[0][0]*given_arr[2][3]*given_arr[3][1] + given_arr[0][1]*given_arr[2][0]*given_arr[3][3] + given_arr[0][3]*given_arr[2][1]*given_arr[3][0] - given_arr[0][0]*given_arr[2][1]*given_arr[3][3] - given_arr[0][1]*given_arr[2][3]*given_arr[3][0] - given_arr[0][3]*given_arr[2][0]*given_arr[3][1]
    b22 = given_arr[0][0]*given_arr[1][1]*given_arr[3][3] + given_arr[0][1]*given_arr[1][3]*given_arr[3][0] + given_arr[0][3]*given_arr[1][0]*given_arr[3][1] - given_arr[0][0]*given_arr[1][3]*given_arr[3][1] - given_arr[0][1]*given_arr[1][0]*given_arr[3][3] - given_arr[0][3]*given_arr[1][1]*given_arr[3][0]
    b23 = given_arr[0][0]*given_arr[1][3]*given_arr[2][1] + given_arr[0][1]*given_arr[1][0]*given_arr[2][3] + given_arr[0][3]*given_arr[1][1]*given_arr[2][0] - given_arr[0][0]*given_arr[1][1]*given_arr[2][3] - given_arr[0][1]*given_arr[1][3]*given_arr[2][0] - given_arr[0][3]*given_arr[1][0]*given_arr[2][1]

    b30 = given_arr[1][0]*given_arr[2][2]*given_arr[3][1] + given_arr[1][1]*given_arr[2][0]*given_arr[3][2] + given_arr[1][2]*given_arr[2][1]*given_arr[3][0] - given_arr[1][0]*given_arr[2][1]*given_arr[3][2] - given_arr[1][1]*given_arr[2][2]*given_arr[3][0] - given_arr[1][2]*given_arr[2][0]*given_arr[3][1]
    b31 = given_arr[0][0]*given_arr[2][1]*given_arr[3][2] + given_arr[0][1]*given_arr[2][2]*given_arr[3][0] + given_arr[0][2]*given_arr[2][0]*given_arr[3][1] - given_arr[0][0]*given_arr[2][2]*given_arr[3][1] - given_arr[0][1]*given_arr[2][0]*given_arr[3][2] - given_arr[0][2]*given_arr[2][1]*given_arr[3][0]
    b32 = given_arr[0][0]*given_arr[1][2]*given_arr[3][1] + given_arr[0][1]*given_arr[1][0]*given_arr[3][2] + given_arr[0][2]*given_arr[1][1]*given_arr[3][0] - given_arr[0][0]*given_arr[1][1]*given_arr[3][2] - given_arr[0][1]*given_arr[1][2]*given_arr[3][0] - given_arr[0][2]*given_arr[1][0]*given_arr[3][1]
    b33 = given_arr[0][0]*given_arr[1][1]*given_arr[2][2] + given_arr[0][1]*given_arr[1][2]*given_arr[2][0] + given_arr[0][2]*given_arr[1][0]*given_arr[2][1] - given_arr[0][0]*given_arr[1][2]*given_arr[2][1] - given_arr[0][1]*given_arr[1][0]*given_arr[2][2] - given_arr[0][2]*given_arr[1][1]*given_arr[2][0]

    return ([[b00/detA, b01/detA, b02/detA, b03/detA], [b10/detA, b11/detA, b12/detA, b13/detA], [b20/detA, b21/detA, b22/detA, b23/detA], [b30/detA, b31/detA, b32/detA, b33/detA]])
end

def func_inverse3x3(given_arr)
    detA = func_3x3_det(given_arr)

    b11 = given_arr[1][1]*given_arr[2][2] - given_arr[1][2]*given_arr[2][1]
    b21 = given_arr[1][2]*given_arr[2][0] - given_arr[1][0]*given_arr[2][2]
    b31 = given_arr[1][0]*given_arr[2][1] - given_arr[1][1]*given_arr[2][0]

    b12 = given_arr[0][2]*given_arr[2][1] - given_arr[0][1]*given_arr[2][2]
    b22 = given_arr[0][0]*given_arr[2][2] - given_arr[0][2]*given_arr[2][0]
    b32 = given_arr[0][1]*given_arr[2][0] - given_arr[0][0]*given_arr[2][1]

    b13 = given_arr[0][1]*given_arr[1][2] - given_arr[0][2]*given_arr[1][1]
    b23 = given_arr[0][2]*given_arr[1][0] - given_arr[0][0]*given_arr[1][2]
    b33 = given_arr[0][0]*given_arr[1][1] - given_arr[0][1]*given_arr[1][0]

    return ([[b11/detA, b12/detA, b13/detA],[b21/detA, b22/detA, b23/detA],[b31/detA, b32/detA, b33/detA]])
end

def func_inverse2x2(given_arr)
    detA = func_2x2_det(given_arr)

    b11 = (given_arr[1][1])/detA
    b12 = ((-1)*given_arr[0][1])/detA

    b21 = ((-1)*given_arr[1][0])/detA
    b22 = (given_arr[0][0])/detA

    return ([[b11, b12],[b21, b22]])
end