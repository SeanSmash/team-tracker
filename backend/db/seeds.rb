require 'faker'

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

# team 1
team_1_offense = []
6.times{team_1_offense.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 1, position: "forward"})}
team_1_midfield = []
8.times{team_1_midfield.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 1, position: "midfield"})}
team_1_defense = []
6.times{team_1_defense.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 1, position: "defense"})}
team_1_goalkeeper = []
2.times{team_1_goalkeeper.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 1, position: "goalkeeper"})}

Player.create(team_1_offense)
Player.create(team_1_midfield)
Player.create(team_1_defense)
Player.create(team_1_goalkeeper)

# team 2
team_2_offense = []
6.times{team_2_offense.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 2, position: "forward"})}
team_2_midfield = []
8.times{team_2_midfield.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 2, position: "midfield"})}
team_2_defense = []
6.times{team_2_defense.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 2, position: "defense"})}
team_2_goalkeeper = []
2.times{team_2_goalkeeper.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 2, position: "goalkeeper"})}

Player.create(team_2_offense)
Player.create(team_2_midfield)
Player.create(team_2_defense)
Player.create(team_2_goalkeeper)

# team 3
team_3_offense = []
6.times{team_3_offense.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 3, position: "forward"})}
team_3_midfield = []
8.times{team_3_midfield.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 3, position: "midfield"})}
team_3_defense = []
6.times{team_3_defense.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 3, position: "defense"})}
team_3_goalkeeper = []
2.times{team_3_goalkeeper.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 3, position: "goalkeeper"})}

Player.create(team_3_offense)
Player.create(team_3_midfield)
Player.create(team_3_defense)
Player.create(team_3_goalkeeper)

# team 4
team_4_offense = []
6.times{team_4_offense.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 4, position: "forward"})}
team_4_midfield = []
8.times{team_4_midfield.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 4, position: "midfield"})}
team_4_defense = []
6.times{team_4_defense.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 4, position: "defense"})}
team_4_goalkeeper = []
2.times{team_4_goalkeeper.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 4, position: "goalkeeper"})}

Player.create(team_4_offense)
Player.create(team_4_midfield)
Player.create(team_4_defense)
Player.create(team_4_goalkeeper)

# team 5
team_5_offense = []
6.times{team_5_offense.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 5, position: "forward"})}
team_5_midfield = []
8.times{team_5_midfield.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 5, position: "midfield"})}
team_5_defense = []
6.times{team_5_defense.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 5, position: "defense"})}
team_5_goalkeeper = []
2.times{team_5_goalkeeper.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 5, position: "goalkeeper"})}

Player.create(team_5_offense)
Player.create(team_5_midfield)
Player.create(team_5_defense)
Player.create(team_5_goalkeeper)

PlayerStatus.create([
    {player_id: 1, status_id: 1},
    {player_id: 1, status_id: 3},
    {player_id: 2, status_id: 2},
    {player_id: 2, status_id: 4}
])



puts "✅ Done seeding!"
