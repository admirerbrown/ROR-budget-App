require 'rails_helper'

RSpec.feature 'welcomeScreen', type: :feature do
  before(:each) do
    visit root_path
  end

  it 'should have a sign up button' do
    expect(page).to have_content('SIGN UP')
  end

  it 'should have a sign in button' do
    expect(page).to have_content('LOG IN')
  end

  it 'should show the sign in form' do
    click_button 'SIGN UP'
    expect(page).to have_content('SIGN UP')
  end

  it 'should show the sign up form' do
    click_button 'LOG IN'
    expect(page).to have_content('LOG IN')
  end
end
