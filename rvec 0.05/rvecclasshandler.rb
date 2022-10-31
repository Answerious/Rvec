module Helper
    require_relative("./rvecbase/helpercommands")

    def f_len(x)
        return func_len(x)
    end

    def f_reverse(x)
        return func_reverse(x)
    end

    def f_list()
        return func_list()
    end

    def f_set()
        return func_set
    end
end

module Addcorrarr
    require_relative "./rvecbase/addcorrarr"
    def f_adt(x, y, z)
        return func_adt(x, y, z)
    end
end

module ArrayGeneration
    require_relative "./rvecbase/arraygen"
    require_relative "./rvecbase/rvarray"
    def f_array(x, y, z)
        return func_array(x, y, z)
    end
end

module Divcorrarr
    require_relative "./rvecbase/divcorrarr"
    def f_ddt(x, y, z)
        return func_ddt(x, y, z)
    end
end

module Dot
    require_relative "./rvecbase/identifier"
    require_relative "./rvecbase/dot"
    require "Matrix"
    def f_dot(x, y)
        return func_dot(x, y)
    end
end

module Exp
    require_relative "./rvecbase/exp"
    def f_exp(x)
        return func_exp(x)
    end
end

module Identifier
    require_relative "./rvecbase/identifier"
    def f_id(x)
        return func_id(x)
    end
end

module Multicorrarr
    require_relative "./rvecbase/multicorrarr"
    def f_mdt(x, y, z)
        return func_mdt(x, y ,z)
    end
end

module Nst
    require_relative "./rvecbase/negative"
    def f_nst(x)
        return func_nst(x)
    end
end

module Sigmoid_Derivative
    require_relative "./rvecbase/sigmoid_derivative"
    def f_sigd(x)
        return func_sigd(x)
    end
end

module Sigmoid
    require_relative "./rvecbase/sigmoid"
    def f_sig(x)
        return func_sig(x)
    end
end

module ArrayMean
    require_relative "./arrayspec/arraymean"

    def f_mean(array)
        return func_mean(array)
    end

    def f_mse(array)
        return func_mse(array)
    end
end

module ArrayRavel
    require_relative "./arrayspec/arrayravel"
    def f_ravel(array)
        return func_ravel(array)
    end
end

module ArraySTD
    require_relative "./arrayspec/arraystd"
    def f_std(array)
        return func_std(array)
    end
end

module Arraysum
    require_relative "./arrayspec/arraysumation"
    def f_sum(array)
        return func_sum(array)
    end
end

module LinearRegression
    require_relative "./arrayspec/product"
    require_relative "./arrayspec/linearreg"
    require_relative "./arrayspec/regxpredict"

    def f_regx(plotx, ploty)
        return func_regx(plotx, ploty)
    end

    def f_ss(array)
        return func_ss(array)
    end

    def f_sp(array1, array2)
        return func_sp(array1, array2)
    end

    def f_predict(x, regx)
        return func_predict(x, regx)
    end    
end

module PolynomialRegression
    require_relative "./arrayspec/polynomial/polynomialreg"

    def f_inverse(given_arr)
        return func_inverse(given_arr)
    end

    def f_size(given_arr)
        return func_size(given_arr)
    end

    def f_dot_rule(given_arr)
        return func_dot_rule(given_arr)
    end

    def f_PolynomialRegression(x,y,degree=2,type=2)
        return func_polynomialx(x,y,degree,type)
    end
end

module LogisticRegression
    require_relative "./arrayspec/logistic/logistic_regression"
    require_relative "./arrayspec/logistic/logistic_prediction"
    #require_relative "./arrayspec/logistic/gradient_method"
    #require_relative "./arrayspec/logistic/newton_method"
    #require_relative "./arrayspec/logistic/data_organisation"
    #require_relative "./arrayspec/logistic/logistic_initialisation"

    def f_logistic(train_x, train_y, method="n", type="binary")
        return func_logistic(train_x, train_y, method, type)
    end

    def f_predictlog(model, test_x, test_y, show=true)
        return func_predictlog(model, test_x, test_y, show)
    end
end


class Rvec

    def self.len(x)
        """Returns the length given an array, or string"""
        set = self.extend(Helper)
        return set.f_len(x)
    end

    def self.reverse(x)
        """Reverses the order of an array"""
        set = self.extend(Helper)
        return set.f_reverse(x)
    end

    def self.list()
        "Creates empty list i.e '[]'"""
        set = self.extend(Helper)
        return set.f_list
    end

    def self.set()
        """Creates an empty set or dictonary, i.e '{}'"""
        set = self.extend(Helper)
        return set.f_set()
    end

    def self.adt(x, y, z)
        """Add each element of a 2D array with corresponding element of another array"""
        set = self.extend(Addcorrarr)
        return set.f_adt(x, y, z)
    end

    def self.ddt(x, y, z)
        """Divide each element of a 2D array with corresponding element of another array"""
        set = self.extend(Divcorrarr)
        return set.f_ddt(x, y ,z)
    end

    def self.array(x, y, z)
        """Creates random array"""
        set = self.extend(ArrayGeneration)
        return set.f_array(x, y, z)
    end

    def self.dot(x, y)
        """Array multiplcation (Not great)"""
        set = self.extend(Dot)
        return set.f_dot(x, y)
    end

    def self.exp(x)
        """Exponental Function"""
        set = self.extend(Exp)
        return self.f_exp(x)
    end

    def self.id(x)
        """Input identifier"""
        set = self.extend(Identifier)
        return self.f_id(x)
    end

    def self.mdt(x, y, z)
        """Mutlipy each element of a 2D array wiht corresponding element of another array"""
        set = self.extend(Multicorrarr)
        return self.f_mdt
    end

    def self.nst(x)
        """Multiply input by '-1'"""
        set = self.extend(Nst)
        return self.f_nst(x)
    end

    def self.sigd(x)
        """Sigmoid derivative function"""
        set = self.extend(Sigmoid_Derivative)
        return self.f_sigd(x)
    end

    def self.sig(x)
        """Sigmoid function"""
        set = self.extend(Sigmoid)
        return self.f_sig(x)
    end

    def self.mean(array)
        """Find the mean number of the array"""
        set = self.extend(ArrayMean)
        return self.f_mean(array)
    end

    def self.mse(array)
        """Calculates the mean squared number of the array"""
        set = self.extend(ArrayMean)
        return self.f_mse(array)
    end

    def self.ravel(array)
        """2D array flattens to 1D array"""
        set = self.extend(ArrayRavel)
        return self.f_ravel(array)
    end

    def self.std(array)
        """Standard deviation for 1D array"""
        set = self.extend(ArraySTD)
        return self.f_std(array)
    end

    def self.sum(array)
        """Sum of an inputed array"""
        set = self.extend(Arraysum)
        return self.f_sum(array)
    end

    def self.regx(plotx, ploty)
        """Linear Regression"""
        set = self.extend(LinearRegression)
        return self.f_regx(plotx, ploty)
    end

    def self.ss(array)
        """Mean squared"""
        set = self.extend(LinearRegression)
        return self.f_ss(array)
    end

    def self.sp(array1, array2)
        """SP product"""
        set = self.extend(LinearRegression)
        return self.f_sp(array1, array2)
    end

    def self.predict(x, regx)
        """Linear regression prediction"""
        set = self.extend(LinearRegression)
        return self.f_predict(x, regx)
    end

    def self.inverse(given_arr)
        """For an 2x2-4x4 array"""
        set = self.extend(PolynomialRegression)
        return self.f_inverse(given_arr)
    end

    def self.size(given_arr)
        """find the dimensions for a given array"""
        set = self.extend(PolynomialRegression)
        return self.f_size(given_arr)
    end

    def self.dot_rule(given_arr)
        """Matrix multi [homemade]"""
        set = self.extend(PolynomialRegression)
        return self.f_dot_rule(given_arr)
    end

    def self.PolynomialRegression(x,y,degree=2,type=2)
        """Polynomial regression"""
        set = self.extend(PolynomialRegression)
        return self.f_PolynomialRegression(x,y,degree,type)
    end

    def self.logistic(train_x, train_y, method="n", type="binary")
        """Logistic Regression"""
        set = self.extend(LogisticRegression)
        return self.f_logistic(train_x, train_y, method, type)
    end

    def self.predictlog(model, test_x, test_y, show=true)
        """Logistic Regression Prediction"""
        set = self.extend(LogisticRegression)
        return self.f_predictlog(model, test_x, test_y, show)
    end
end

#puts print "Test"
