require 'rails_helper'

RSpec.describe Group, type: :model do
  it 'name should be present' do
    #  let(:author) { User.new(name: 'Test User', email: 'john@test.com', password: '12345678') }
    @author = User.new(name: 'John', email: 'john@test.com', password: '12345678')
    group = Group.new(name: 'sports', icon: 'www.john@test.com', user: @author)
    check = group.valid?

    expect(check).to eq(true)
  end

  it 'name should be present' do
    group = Group.new(name: '', icon: 'shorturl.at/nxQZ7')
    check = group.valid?

    expect(check).to eq(false)
  end

  it 'name and user should be present' do
    group = Group.new(name: '', icon: 'shorturl.at/nxQZ7')
    check = group.valid?

    expect(check).to eq(false)
  end
end
