class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    Restaurant.all.to_json
  end
  
  post "/signup" do
      binding.pry
      if User.find_by(username: user_params[:username])
        {message: "Username exists. Please login..."}
      else
        @user = User..create(user_params)
        @user.to_json
  end

  private
  def user_params
    allowed_params =%w(username password)
    params.select{ |param, value| allowed_params.include?(param)}
  end


end