require 'rails_helper'

describe 'User' do

    before do 
        @joan = User.create({first_name: "Joan", last_name: "Adams", birthdate: "1983-04-10", email: "joan.adams@gmail.com"})
        @journat_entry1 = GratitudeJournal.create(title: "Firts_entry", content: "Be Happy", user: @joan)
        @todolist1 = TodoList.create(task_name: "New_list", task_content: "Don't Worry", due_date: "2029-12-12", user: @joan)
    end 

    it 'has a first_name' do
        expect(@joan.first_name).to eq("Joan")
    end 

    it 'has a last_name' do
        expect(@joan.last_name).to eq("Adams")
    end 


    it 'has a journal_entry' do
        expect(@joan.gratitude_journals).to eq ([@journat_entry1])
    end 


    it 'has a todo_list' do
        expect(@joan.todo_lists).to eq ([@todolist1])
    end 

end 