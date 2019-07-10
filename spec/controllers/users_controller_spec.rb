require 'rails_helper'


describe UsersController do 

    describe "POST create" do
        context "with valid attributes" do 
            it "creates new user" do
                expect{
                    post :create, params: { :first_name => "Joan", :last_name => "Adams", :birthdate => "1983-04-10", :email => "joan.adams@gmail.com"}, as: :json
              }.to change(User,:count).by(1)
             end 
         end 
     end 
end 