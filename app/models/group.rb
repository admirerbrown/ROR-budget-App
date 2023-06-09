class Group < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :wallets

  validates :name, presence: true, length: { maximum: 250 }
  validates :icon, presence: true

  def total_expenses
    wallets = self.wallets
    wallets.sum(:amount)
  end
end
