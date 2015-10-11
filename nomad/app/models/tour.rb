class Tour < ActiveRecord::Base
	belongs_to :user

      geocoded_by :address
      after_validation :geocode

	def self.search(search)
 		 where("tour_name LIKE ?", "%#{search}%")
  	end
end
