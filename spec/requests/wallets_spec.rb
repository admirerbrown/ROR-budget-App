require 'rails_helper'

RSpec.describe WalletsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/expenses').to route_to('wallets#index')
    end
  end
end
