require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

  get "/teams" do
    teams = Team.all
    teams.to_json
  end

  get "/players" do
    players = Player.all
    players.to_json
  end

end
