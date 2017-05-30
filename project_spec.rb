require_relative 'project' # include our Project class in our spec file
RSpec.describe Project do
    before(:each) do
        @project1 = Project.new('Project 1', 'description 1', 'owner 1') # create a new project and make sure we can set the name attribute
        @project2 = Project.new('Project 2', 'description 2', 'owner 2')
    end
    it 'has a getter and a setter for name attribute' do
        @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
        expect(@project1.name).to eq("Changed Name") #this line would fail if we did not have a getter of it did not change the name successfully in the previous line.
    end

    it 'has a method elevator_pitch to explain name and description' do
        expect(@project1.elevator_pitch).to eq(puts "Project 1, description 1")
        expect(@project2.elevator_pitch).to eq(puts "Project 2, description 2")
    end

    it 'has a getter and a setter for owner attribute' do
        @project1.owner = "owner 1"
        @project2.owner = "owner 2"
    end

    it 'has a method tasks that lists tasks' do
        expect(@project1.tasks).to eq([])
        @project2.add_tasks("laundry")
        expect(@project2.tasks).to eq(['laundry'])
    end
end
