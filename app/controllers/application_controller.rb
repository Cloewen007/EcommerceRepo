class ApplicationController < ActionController::Base
  protect_from_forgery
  
protected

 def require_sudo
    require 'digest'
   authenticate_or_request_with_http_basic do |username, password|
     username == 'admin' || password == 'securepassword'
   end
 end
end
