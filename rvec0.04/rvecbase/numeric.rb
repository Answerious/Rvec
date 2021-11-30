class String
    def integer?
        return true if self =~ /^[1-9]\d*(\.\d+)?$/
        false
    end
end