class Tour < ActiveRecord::Base
	belongs_to :user
	has_many :reviews

	def self.search(search)
 		 where("tour_name LIKE ?", "%#{search}%") 
  	end
end
