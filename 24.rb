=begin
1. Take the Employee and Company classes, and create functionality to allow the company to hire and fire an employee.

Create a Ruby app that will use those classes to do the following:


2. Prompt the user to enter each employee. It will then "hire" each of them.
3. Show a list of employees, with ids.
4. Then ask the user if they would like to fire an employee by entering that id.
5. Fire the employee by id and show an updated list with that employee no longer in it.
=end



# Company method
class Company
    def initialize
        @employees = {}
    end

    def hire(employee)
        @employees[employee.id] = employee
    end

    def print_employees
        @employees.each do |id, employee|
            # Print information about one of our employees.
            puts id + " " + employee.name
        end
    end

    def fire(id)
        @employees.delete(id)
    end
end

# Employee method
class Employee
    attr_reader :id
    attr_reader :name

    def initialize(name, id)
        @name = name
        @id = id
    end
end

#Prompt the user to enter information about the company
puts "You are about to enter the comapny database to hire and fire employees"

company = Company.new

# Enter employees name, id number and if adding more employees
loop do
    # Get info about new employee
    puts "Enter the employee's first and last name: "
    employee_name = gets.chomp
    puts "Enter the employee id number: "
    employee_id = gets.chomp
    puts employee_name + " " + employee_id

    # Create and hire employee.
    employee = Employee.new(employee_name, employee_id)
    puts employee
    company.hire(employee)


    # Any more?
    puts "Any more employees to add: yes or no"
    admin_input = gets.chomp
    break if admin_input == "no"
end

# Show list of employee's names and their corresponding id's
company.print_employees

# Fire employee by id number
puts "Type in employees id number to fire them: "
employee_id = gets.chomp
company.fire(employee_id)
company.print_employees
