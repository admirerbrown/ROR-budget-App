require 'rails_helper'

RSpec.describe GroupsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/categories').to route_to('groups#index')
    end

    it 'routes to #new' do
      expect(get: '/categories/new').to route_to('groups#new')
    end

    it 'routes to #show' do
      expect(get: '/categories/1').to route_to('groups#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/categories').to route_to('groups#create')
    end
  end
end
