class Status < ActiveRecord::Base 
    has_many :player_statuses
    has_many :players, through: :player_statuses

end