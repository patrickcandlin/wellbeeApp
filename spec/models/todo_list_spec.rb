require 'rails_helper'

describe 'TodoList' do

    before do 
        @joan = User.create({first_name: "Joan", last_name: "Adams", birthdate: "1983-04-10", email: "joan.adams@gmail.com"})
        @journat_entry1 = GratitudeJournal.create(title: "Firts_entry", content: "Be Happy", user: @joan)
        @todolist1 = TodoList.create(task_name: "New_list", task_content: "Don't Worry", due_date: "2029-12-12", user: @joan)
    end 

    it 'has a task_name' do
        expect(@todolist1.task_name).to eq("New_list")
    end 

    it 'has a task_content' do
        expect(@todolist1.task_content).to eq("Don't Worry")
    end 
end 
