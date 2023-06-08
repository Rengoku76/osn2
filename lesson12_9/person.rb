class Person
    def initialize(name)
        @name = name
        @film2 = nil
    end
    def full_name
        return "#{@name}"
    end
    def film2=(film2)
        @film2 = film2
    end
    def film2
        return @film2
    end
end