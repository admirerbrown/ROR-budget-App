require 'rails_helper'

RSpec.describe GroupsWallet, type: :model do
  let(:user) { User.new(name: 'Test User') }
  let(:group) { Group.new(name: 'Test Food', user_id: user.id, icon: 'wwww.unsphkask') }
  let(:wallet) { Wallet.new(name: 'Test Recipe', amount: 10) }

  describe 'validations' do
    it 'requires a group' do
      expense_group = GroupsWallet.new(wallet_id: wallet.id, group_id: group.id)
      expect(expense_group).not_to be_valid
    end

    it 'requires a wallet' do
      expense_group = GroupsWallet.new(wallet_id: wallet.id, group_id: group.id)
      expect(expense_group).not_to be_valid
    end
  end
end
