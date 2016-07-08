class User < ActiveRecord::Base
has_many :products
has_many :users

validates :email, presence: true,
				  uniqueness: true

end
