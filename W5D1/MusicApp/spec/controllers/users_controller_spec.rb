require 'rails_helper'

begin
  UsersController
rescue
 UsersController = nil
end

RSpec.describe UsersController, :type => :controller do

  describe "GET #new" do
    it "renders the new template" do
      get :new
      expect(response).to be_success
      expect(response).to render_template(:new)
    end
  end

  describe "POST #create" do
    context "with invalid params" do
      it "validates the presence of the user's email and password" do
        user = User.create!({email: 'example@example.com', password: "" })
        post :create
        expect(response).to render_template(:new)
      end

      it "validates that the password is at least 6 characters long" do
        user = User.create!({email: 'example@example.com', password: "ex"})
        post :create
        expect(response).to render_template(:new)
      end
    end

    context "with valid params" do
      it "redirects user to bands index on success"
    end
  end
end
