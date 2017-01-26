require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do
    before do
      @user = User.create(email: "test@goblue.com", password: "abcd1234", password_confirmation: "abcd1234", first_name: "Donald", last_name: "Duck")
    end

    it "can be created" do
      expect(@user).to be_valid
    end

    it "can not be created without first_name, last_name" do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end
end
