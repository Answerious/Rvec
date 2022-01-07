/ Test elements /
#test_array = [[3.0,3.0,2.0,1.0,1.0],[2.0,1.0,3.0,2.0,3.0],[1.0,3.0,3.0,2.0,2.0],[2.0,3.0,3.0,1.0,1.0],[3.0,1.0,2.0,1.0,2.0]]
#test_arr = [[9.0, 45.0, 285.0, 2025.0, 15333.0, 120825.0], [45.0, 285.0, 2025.0, 15333.0, 120825.0, 978405.0], [285.0, 2025.0, 15333.0, 120825.0, 978405.0, 8080425.0], [2025.0, 15333.0, 120825.0, 978405.0, 8080425.0, 67731333.0], [15333.0, 120825.0, 978405.0, 8080425.0, 67731333.0, 574304985.0], [120825.0, 978405.0, 8080425.0, 67731333.0, 574304985.0, 4914341925.0]]

# Creating storage & initalizing for augmented matrix
# this is the same as the np.zeros((n,2*n)) function
def nx2n(n_Rows, n_Columns)
    zeros = []
    n_Rows.times() do |i|
        zeros << []
        (n_Columns*2).times(){ |j| zeros[i] << 0 }
    end
    return zeros
end

# Applying matrix coefficients
def update(inputs, n_Rows, n_Columns, zero)
    n_Rows.times() do |i|
        n_Columns.times(){|j| zero[i][j] = inputs[i][j]}
    end
    return zero
end

# Augmenting Identity Matrix of Order n
def identity(n_Rows, n_Columns, matrix)
    n_Rows.times() do |i|
        n_Columns.times() do |j|
            if i == j
                matrix[i][j+n_Columns] = 1
            end
        end
    end
    return matrix
end

# Applying & implementing the GJE algorithm
def gaussion_Jordan_Elimination(n_Rows, n_Columns, matrix)
    n_Rows.times do |i|
        if matrix[i][i] == 0 
            return "error cannot divide by '0'"
        end
        n_Columns.times() do |j|
            if i != j
                ratio = matrix[j][i]/matrix[i][i]

                (n_Columns*2).times do |k|
                    matrix[j][k] = matrix[j][k] - ratio * matrix[i][k]
                end
            end
        end
    end
    return matrix
end

# Row Operation to make Principal Diagonal Element to '1'
def row_op(n_Rows, n_Columns, matrix)
    n_Rows.times do |i|
        divide = matrix[i][i]
        (n_Columns*2).times() do |j|
            matrix[i][j] = (matrix[i][j]) / divide
        end
    end
    return matrix
end

# Display Inversed Matix
def func_inverse_nxn(matrix)
    returnable = []
    number_Rows = matrix.length().to_i
    number_Columns = matrix[0].length().to_i
    inversed_matrix = (row_op(number_Rows, number_Columns, 
    gaussion_Jordan_Elimination(number_Rows, number_Columns, 
    identity(number_Rows, number_Columns, 
    update(matrix, number_Rows, number_Columns, 
    nx2n(number_Rows, number_Columns))))))

    number_Rows.times do |i|
        returnable << []
        (number_Columns).times() do |j|
            returnable[i] << inversed_matrix[i][j+number_Columns]
        end
    end
    return returnable
end
