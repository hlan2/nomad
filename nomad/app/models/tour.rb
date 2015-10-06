class Tour < ActiveRecord::Base
	belongs_to :user

	def self.search(search)
 		 where("tour_name LIKE ?", "%#{search}%") 
  	end
end
