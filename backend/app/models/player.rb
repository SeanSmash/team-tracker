class Player < ActiveRecord::Base
    belongs_to :team
    has_many :player_statuses 
    has_many :status, through: :player_statuses 

end