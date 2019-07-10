require 'rails_helper'


describe TodoListsController do 

    
    describe "ToDo create" do
        context "with valid attributes" do 
            it "creates new task" do
                expect{
                    post :create, params: { :task_name => "First_task", :task_content => "Don't Worry", :due_date => "2029-12-12", :user => @joan}, as: :json
              }
             end 
         end 
     end 
end 