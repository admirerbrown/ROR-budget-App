class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :wallets, foreign_key: :author_id
  has_many :groups
  attr_accessor :unconfirmed_email

  validates :name, presence: true, length: { maximum: 250 }
  validates :email, presence: true
  validates :password, presence: true
end
