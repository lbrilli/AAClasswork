require_relative 'Employee'

class Manager < Employee
    attr_reader :employees  
    def initialize(name, title, salary, boss, employees)
        super(name, title, salary, boss)
        @employees = employees
    end

end