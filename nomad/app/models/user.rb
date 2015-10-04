class User < ActiveRecord::Base
	has_many :reviews
	has_many :sent_messages, class_name: "Message"
	has_many :received_messages, class_name: "Message"
end
