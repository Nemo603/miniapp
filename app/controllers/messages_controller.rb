class MessagesController < ApplicationController

  before_action :message_params
  def index
    @message = Message.new
    # @messages = @group.messages.includes(:user)r
        #余計なもの入ってる↑
  end

  def create
    @message = Message.new(message_params)
    @message.save
    # binding.pry
    if 
      redirect_to messages_path(@message), notice: 'メッセージが送信されました'
    else
      # @messages = @messages.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      render :index
    end
  end

  private

  def message_params
    # params.require(:message).permit(:content).merge(user_id: current_user.id)
  end

  # def set_group
  #   @group = Group.find(params[:group_id])
  # end

end
