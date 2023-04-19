puts "🌱 Seeding spices..."

# Seed your database here

Team.create([
    {team: "Falcons"},
    {team: "Blue Jays"},
    {team: "Eagles"},
    {team: "Cardinals"},
    {team: "Orioles"},
    {team: "Unassigned"}
])

Status.create([
    {status: "starter"},
    {status: "back up"},
    {status: "injured"},
    {status: "healthy"},
    {status: "unassigned"}
])

Player.create([
    {first_name: "Bill", last_name: "Jones", jersey_number: 27, team_id: 1, position: "forward"},
    {first_name: "James", last_name: "Conner", jersey_number: 13, team_id: 1, position: "midfield"}
])

PlayerStatus.create([
    {player_id: 1, status_id: 1},
    {player_id: 1, status_id: 3},
    {player_id: 2, status_id: 2},
    {player_id: 2, status_id: 4}
])



puts "✅ Done seeding!"
