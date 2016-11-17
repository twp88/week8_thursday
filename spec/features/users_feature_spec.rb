require 'rails_helper'

feature 'User login and logout pages' do
  context 'User visits page and needs to sign in' do
    it 'should see a link for sign in and a link for sign out' do
      visit('/')
      expect(page).to have_link 'Sign in'
      expect(page).to have_link 'Sign up'
    end

    it 'should not see sign out link' do
      visit('/')
      expect(page).not_to have_link 'Sign out'
    end
  end

  context 'user signed in on the homepage' do
    before do
      visit('/')
      click_link('Sign up')
      fill_in('Email', with: "Rory@rory.com")
      fill_in('Password', with: "RoryRR")
      fill_in('Password confirmation', with: "RoryRR")
      click_button('Sign up')
  end

    it "should see the sign out link" do
      visit("/")
      expect(page).to have_link "Sign out"
    end

    it "should not have a sign in link or a sign up link" do
      visit("/")
      expect(page).not_to have_link('Sign in')
      expect(page).not_to have_link('Sign up')
    end
  end
end
