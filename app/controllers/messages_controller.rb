class MessagesController < ApplicationController
  def create
    p params[:message][:email]
  
  end
end
