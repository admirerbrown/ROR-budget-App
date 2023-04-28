class GroupsWallet < ApplicationRecord
  belongs_to :wallet
  belongs_to :group
end
