class ConversationsController < ApplicationController

    def index
    end

    def new
        @conversation = current_user.mailbox.inbox.new
        @user = User.find(params[:user_id])
    end

    def create
        @recipient = User.find(params[:user_id])
        current_user.send_message(@recipient, params[:body], params[:subject])
        flash[:notice] = "Message has been sent!"
        redirect_to :conversations

    end

    def destroy
    end

end
