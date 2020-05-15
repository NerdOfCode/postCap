class Api::V1::LogoutController < ApplicationController
  def index
    if session[:user_id].nil?
      render json: {
        'status'      => 403,
        'description' => 'Not logged in'
      }
    else
      reset_session
      if session[:user_id].nil?
        render json: {'status' => 200}
      else
        render json: {'status' => 500}
      end
    end
  end
end
