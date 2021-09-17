class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :restaurant

    delegate :username, to: :user
end
