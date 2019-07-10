require 'rails_helper'

describe "users", type: :feature do
  before do
    @bob = User.create({first_name: "Bob", last_name: "Smith", birthdate: "1987-11-11", email: "bob.smith@gmail.com"})
    GratitudeJournal.create(title: "Firts_entry", content: "Be Happy", user_id: 1)
  end
  
  
  describe "#show page" do
    it "shows options for the user" do
      visit user_path(@bob)
      expect(page).to have_content("Create a Task")
    end 

    it "links to a new journal entry " do
      visit user_path(@bob)
      expect(page). to have_link("Express Gratitude", href: new_user_gratitude_journal_path(@bob))
    end
  end 
end 