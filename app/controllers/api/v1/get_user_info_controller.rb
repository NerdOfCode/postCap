class Api::V1::GetUserInfoController < ApplicationController
  def index
    user_id = session[:user_id]

    if not user_id.nil?
      @user = User.find_by(id: user_id)
      render json: @user.as_json(:except => [:password_digest])
    else
      render json: { 'status' => 404 }
    end
  end
end
