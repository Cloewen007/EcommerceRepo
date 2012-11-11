class ApplicationController < ActionController::Base
  protect_from_forgery
  validates_presence_of :name, :description, :price, :category_id
protected

 def require_sudo
    require 'digest'
   authenticate_or_request_with_http_basic do |username, password|
     username == 'admin' || password == 'securepassword'
   end
 end
end
