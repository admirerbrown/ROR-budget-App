class Wallet < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :groups

  validates :author_id, presence: true
  validates :name, presence: true, length: { maximum: 250 }
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
