class Employee

    attr_reader :name, :title, :salary, :boss

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        total_salary = 0

        @employees.each do |employee|
            total_salary += employee.salary 
        end

        if self.title == 'manager'
            bonus = total_salary * multiplier
        else
            bonus = @salary * multiplier
        end

        bonus
    end

    #define a setter
    #have the setter take in an array of employees
    #pass that array to the manager class -- adjust manager class to accept the array
    #assign the manager object to the employee

end