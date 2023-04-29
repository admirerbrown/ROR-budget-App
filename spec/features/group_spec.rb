require 'rails_helper'

RSpec.feature 'Groups', type: :feature do
  before(:each) do
    @user = User.new(name: 'test', email: 'test04@gmail.com', password: '123456', password_confirmation: '123456')
    @user.confirm

    visit '/users/sign_in'
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
  end

  it 'should have category page' do
    expect(page).to have_content('CATEGORIES')
  end

  it 'should have a new category button' do
    expect(page).to have_content('NEW CATEGORY')
  end

  it 'should have a new category form' do
    click_link 'NEW CATEGORY'
    expect(page).to have_content('ADD CATEGORY')
  end
end
