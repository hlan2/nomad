class Tour < ActiveRecord::Base
	belongs_to :user
	has_many :reviews

      geocoded_by :address
      geocoded_by :city
      after_validation :geocode

	def self.search(search)
 		 where("tour_name LIKE ? OR city LIKE ? OR dog_friendly LIKE ? OR family_friendly LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  	end
end
