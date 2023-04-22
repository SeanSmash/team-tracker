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
    team = Team.all
    team.to_json
  end

  get "/statuses" do
    statuses = Status.all
    statuses.to_json
  end

  get "/players" do
    team = Team.all
    team.to_json(include: {
        players: {
            include: :status
            }
        })
  end

  get "/players/:id" do
    player = Player.find_by(id: params[:id])
    player.to_json(include: :status)
  end

  patch "/players/:id" do
    player = Player.find_by(id: params[:id])
    player.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      jersey_number: params[:jersey_number],
      position: params[:position]
    )
    player.to_json
  end

end
