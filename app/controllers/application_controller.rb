class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  
  get '/' do
    {message: "Hello World"}.to_json
  end
  
  post '/signup' do
    if User.find_by(username: user_params["username"])
      { message: "Username already exists. Please log-in."}.to_json
    else
    @user = User.create(user_params)
    @user.to_json
  end
end



  post '/login' do
    if User.find_by(username: user_params["username"])

      @user = User.find_by(username: user_params["username"])

      if @user.password == user_params["password"]
        { user: @user, message: "Logged in successfully..."}.to_json
      else
        { message: "Username OR Password incorrect! Try again.." }.to_json
      end

    else
      { message: "User doesn't exist. Please sign-up..." }.to_json
  end
end

  private
    def user_params
        allowed_params = %w(username password)
        params.select{ |param, value| allowed_params.include?(param) }
    end

    get '/reviews' do
      @user = User.find_by(id: params["user_id"])

      if @user
        @reviews = @user.reviews
        @reviews.to_json
    end
  end

  delete "/reviews/:id" do
    @reviews = Review.find_by(id: params[:id])

    if @review.user_id == params["user_id"].to_i
      @review.detroy
      { message : "Review was deleted.."}.to_json
    else
      { message: "You're not authorized."}
  end
end

  get '/users' do
    User.all.to_json
  end

  get '/users/reviews' do
    UserReview.all.to_json
  end

  get '/reviews' do
    Review.all.to_json
  end

  get '/restaurants' do
    Restaurant.all.to_json
  end

end