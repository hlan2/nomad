class ReceivedMessagesController < ApplicationController

	def new
		@message = Message.new
	end

	def create
		recipient = User.find(params[:user_name])
		sender = current_user

		receive_message = Message.new(message_params)
        receive_message.sender = sender
        receive_message.recipient  = recipient


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
