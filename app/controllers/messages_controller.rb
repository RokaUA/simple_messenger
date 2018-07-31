class MessagesController < ApplicationController
  before_action :set_user

  def index
    @messages = @user.messages
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def user_params
    params.require(:message).permit(:sender, :receiver, :text)
  end
end