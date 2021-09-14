class RestaurantController < Sinatra::Base

    get 'restaurants' do
        Restaurant.all.to_json
    end
