class Project

attr_accessor :name, :description, :owner
attr_reader :tasks

    def initialize(name, description, owner)
        @name = name
        @description = description
        @owner = owner
        @tasks = []
        self
    end

    def elevator_pitch
        puts "#{@name}, #{@description}"
    end

    def tasks
        @tasks.each do |task|
            puts task
        end
    end

    def add_tasks task
        puts @tasks.push(task)
    end

end
project1 = Project.new("Project 1", "Description 1", "Owner 1")
puts project1.name # => "Project 1"
project1.elevator_pitch  # => "Project 1, Description 1"
project1.add_tasks("laundry")
project1.add_tasks("dishes")
project1.tasks

# reate a Project Class that has the following attributes: name, description.
# Also, create a instance method called elevator_pitch that will print out the
# name of the project and its description separated by a comma.
