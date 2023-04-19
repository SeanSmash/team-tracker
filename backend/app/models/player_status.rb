class PlayerStatus < ActiveRecord::Base 
    belongs_to :player 
    belongs_to :status 

end