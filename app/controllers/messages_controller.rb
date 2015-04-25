class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_search

  def new
  end

  def create
    recipients = User.where(id: params['recipients'])
    conversation = current_user.send_message(recipients, params[:message][:body], params[:message][:subject]).conversation
    flash[:success] = "Message has been sent!"
    redirect_to conversation_path(conversation)
  end

  private

  def set_search
    @search = Profile.search(params[:q])
  end
end
