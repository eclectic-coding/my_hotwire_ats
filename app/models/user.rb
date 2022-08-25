class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :account
  has_many :emails, dependent: :destroy
  accepts_nested_attributes_for :account
end
