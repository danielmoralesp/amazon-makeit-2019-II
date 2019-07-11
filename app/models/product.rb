class Product < ApplicationRecord
	validates :name, :price, :description, presence: true
	# validates :price, numericality: { 
	# 										only_float: true
	# 										# greater_than: 50,
	# 										# greater_than_or_equal_to: 51
	# 									}
	# validates :price, length: { in: 4..7 }
	# validates :name, length: { minimum: 50 }

	# has_many :comments
	belongs_to :user, optional: true
end
