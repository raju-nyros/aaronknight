class UsersController < ApplicationController
	require 'mechanize'
	def index
	end
	
	def new
	@user = User.new()
	end



def create
  @user = User.new(params[:user])
  
  @agent = Mechanize.new
  @agent.user_agent_alias = 'Mac FireFox'
  @user = User.new
  @user.phone =params[:user][:phone]
  @message =params[:user][:message]
  @sms=@agent.get("https://www.my-cool-sms.com/api/send?username=devcomm&password=T2dac8nJ&&number=+91#{params[:user][:phone]}&message=#{@message}")

    @user.save
   render :action => :new

end


	
	
end
