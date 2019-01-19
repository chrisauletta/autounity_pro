class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authorize
        unless logged_in?
          redirect_to root_url
        end
     end
     
    include SessionsHelper
end
