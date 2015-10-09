class Review < ActiveRecord::Base
	belongs_to :user
	belongs_to :tour
end


# class Review < ActiveRecord::Base
#   belongs_to :sender, class_name: 'User'
#   belongs_to :recipient, class_name: 'User'
# end

