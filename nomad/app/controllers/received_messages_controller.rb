class ReceivedMessagesController < ApplicationController

	def new
		@message = Message.new
	end

	def create
		# recipient = User.find(params[:user_id])
		# sender = current_user # instance of User. current_user = User.find_by_email(...)

		receive_message = Message.new(message_params)
        receive_message.sender = current_user # receive_message.sender_id = sender.id
        receive_message.recipient  =  User.find(params[:user_id])


	 	if receive_message.save
  			redirect_to messages_path
 		else
 			render :new
		end
  	end

	private

 	def message_params
		params.require(:message).permit(:message)
	end

end
