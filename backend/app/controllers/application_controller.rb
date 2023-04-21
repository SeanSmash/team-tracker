require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

  get "/teams/:id" do
    team = Team.find_by(id: params[:id])
    team.to_json(include: {
        players: {
            include: :status
            }
        })
  end
  
  get "/teams" do
    teams = Team.all
    teams.to_json
  end

  get "/players" do
    team = Team.all
    team.to_json(include: {
        players: {
            include: :status
            }
        })
  end

end
