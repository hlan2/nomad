class MessagesController < ApplicationController
def index
    @messages = Message.all
    #current_user = User.find_by(id: params[:id])
  end

  def show
  	#@message = Message.find(params[:id])
  end
  
 end

