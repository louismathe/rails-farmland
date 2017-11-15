class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout

  def layout
    if devise_controller?
      'devise'
    else
      'application'
    end
  end
end
