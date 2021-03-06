class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:login], params[:password])
    if user
      session[:user_id] = user.id
      @user = User.find(user.id)
      respond_to do |format|
	      format.html # index.html.erb
# 	      format.json {  render :json => @user.to_json(:include => { :teams => { :only => :name }}) }
	      format.json {  render :json => @user.to_json(:include => { :teams => { :include => :app  }}) }
# 	      format.json {  render :json => @user.to_json(:include => { :teams => {
#                                  							:include => { :app => {
# 	                                 									  :only => :name, :only => :repo_url } },
# 	                                 						:only => :name } })}



 	    end
#       redirect_to_target_or_default root_url, :notice => "Logged in successfully."
    else
      flash.now[:alert] = "Invalid login or password."
      render :action => 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "You have been logged out."
  end
end
