require 'spec_helper'
require 'rails_helper'

feature 'the signup process'

  scenario 'has a new user page' do
    visit new_user_url
    expect(page).to have_content "New User"
  end

  feature 'signing up a user' do
    before(:each) do
        visit new_user_url
        fill_in 'Username', :with => "aaTester"
        fill_in 'Password', :with => "hunter12"
        click_on "submit"
    end

    scenario 'shows username on the homepage after signup' do
        expect(page).to have_content "Welcome to Goals_App"
    end

  end
end

feature 'logging in' do
  scenario 'shows username on the homepage after login' do
    visit new_session_url
    fill_in 'Username', :with => "aaTester"
    fill_in 'Password', :with => "hunter12"
    click_on "login"
    expect(page).to have_content "aaTester"
  end

end

feature 'logging out' do
  scenario 'begins with a logged out state' do
        # before(:each) do
        # visit new_session_url
        # fill_in 'Username', :with => "aaTester"
        # fill_in 'Password', :with => "hunter12"
        # click_on "login"

        expect(page).to have_content "login"
    end

  scenario 'doesn\'t show username on the homepage after logout'

end
