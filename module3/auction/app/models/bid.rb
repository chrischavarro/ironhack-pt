class Bid < ActiveRecord::Base
	belongs_to :product
	belongs_to :user
attr_reader :email 



end