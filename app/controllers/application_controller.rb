class ApplicationController < ActionController::Base
  include ControllerAuthentication
  protect_from_forgery
  
  before_filter :authenticate

	protected
	
	def authenticate
	  authenticate_or_request_with_http_basic do |username, password|
	    username == "foo" && password == "bar"
	  end
	end
end
