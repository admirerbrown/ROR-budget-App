require 'rails_helper'

RSpec.describe GroupsWalletsController, type: :routing do
  describe 'routing' do
    it 'routes to #create' do
      expect(post: '/groups_wallets').to route_to('groups_wallets#create')
    end
  end
end
