class ChatroomController < ApplicationController
  before_action :require_user

  def index 
    @message = Message.new
    @messages = Message.current_display
  end

end
