class Concert < ApplicationRecord
has_many :comments

validates :artist, 
		  :venue ,
		  :city ,
		  :date ,
		  :price , presence: true


end
