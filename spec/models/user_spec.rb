require 'rails_helper'

RSpec.describe User, type: :model do
 it "is valid with an email and password" do
   user = FactoryGirl.build(:user)
   expect(user).to be_valid
 end

 it "is invalid without an email" do
   user = FactoryGirl.build(:user, email: nil)
   expect(user).to be_invalid
 end
end
