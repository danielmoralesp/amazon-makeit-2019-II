class User < ApplicationRecord
	has_many :notes
	has_many :products
	has_many :comments
end
