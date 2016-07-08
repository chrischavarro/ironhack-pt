class Product < ActiveRecord::Base
belongs_to :users
has_many :bids

# validate :biding_deadline

# 	def bidding_deadline
# 		if Time.now > deadline

# 	end

end