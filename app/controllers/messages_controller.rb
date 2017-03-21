class MessagesController < ApplicationController
  def create
    p params[:message][:email]
    MessageMailer.contact_email(params[:message][:email], params[:message][:message_body]).deliver_now
      redirect_to '/'
  end
end
