class Card < ApplicationRecord
	has_many :orders
	belongs_to :user
end
