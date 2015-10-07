class MessagesController < ApplicationController
def index
    @messages = Message.all
    current_user = User.find_by(id: params[:id])
  end

  def show
  	#@message = Message.find(params[:id])
  end
  
  def new
  	#@message = Message.new
  end

  def create
  	#@message = Message.new(message_params)
  	#if @message.save
  	#	redirect_to message_path
  	#else
  	#	render :new
  	#end
  end

  private
  #def message_params
  	#params.require(:message).permit(:message, :sender_id, :recipient_id)
  #end
 end

