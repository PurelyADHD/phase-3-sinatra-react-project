class RestaurantController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    get '/restaurants' do
        Restaurant.all.to_json
    end

    get '/restaurants/category' do
        {"restaurant": params["category"]}.to_json
    end

end