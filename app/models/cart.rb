class Cart < ApplicationRecord
  belongs_to :user
  has_many :pg_transactions
  has_many :cart_items

  enum status: [:active, :done].freeze
end
