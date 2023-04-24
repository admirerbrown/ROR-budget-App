class User < ApplicationRecord
has_many :wallets, foreign_key: :author_id
has_many :groups,

validates :name, presence: true, length: { maximum: 250 }
end
