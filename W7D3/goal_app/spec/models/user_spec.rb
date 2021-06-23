require 'rails_helper'

RSpec.describe User, type: :model do
  # subject(:user) {User.new(username: "aaTester", password: "hunter12")}

  #SPIRE
  #self.find_by
  #password=
  #is_password
  #reset token
  #ensure token
  
  it {should validate_presence_of(:username)}
  it {should validate_presence_of(:password_digest)}
  it {should validate_presence_of(:session_token)}
  it {should validate_length_of(:password).is_at_least(6)}
  it {should validate_uniqueness_of(:username)}
  it {should validate_uniqueness_of(:session_token)}

  it {should have_many(:goals)}
  it {should have_many(:comments)}

  describe "::find_by_credential" do
    before {user.save}
      it "returns a user if credentials match" do
        expect(User.find_by_credential("aaTester","hunter12")).to eq(user)
      end

      it "returns nil if no match is found" do
        expect(User.find_by_credential("aaTester","1234567")).to eq(nil)
      end
    end

  it "creates a password digest" do
    expect(user.password_digest).to_not be_nil
  end

  describe 'is_password' do
    let!(:user) {build(:user)}

    context "with a valid password" do
      it "should return true" do
        expect (user.is_password("hunter12")).to be true
      end
    end

    context "with an invalid password" do
      it "should return false" do
        expect (user.is_password("banana")).to be false
      end
    end
  end

  describe "session token" do
    it "assigns a session token" do
      expect(user.session_token).not_to be_nil
    end

    it "resets session token on a user" do
      old_token = user.session_token
      new_token = user.reset_session_token!

      expect(old_token).to_not eq(new_token)
    end

  end


end
