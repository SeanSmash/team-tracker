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
    {status: "healthy"},
    {status: "injured"},
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

# unassigned
# team 5
unassigned_offense = []
5.times{unassigned_offense.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 6, position: "forward"})}
unassigned_midfield = []
5.times{unassigned_midfield.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 6, position: "midfield"})}
unassigned_defense = []
5.times{unassigned_defense.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 6, position: "defense"})}
unassigned_goalkeeper = []
5.times{unassigned_goalkeeper.push({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, jersey_number: rand(1..99), team_id: 6, position: "goalkeeper"})}

Player.create(unassigned_offense)
Player.create(unassigned_midfield)
Player.create(unassigned_defense)
Player.create(unassigned_goalkeeper)

#seed PlayerStatus
def starter_healthy(i)
    PlayerStatus.create([{player_id: i, status_id: 1}])
    PlayerStatus.create([{player_id: i, status_id: 3}]) 
end

def backup_healthy(i)
    PlayerStatus.create([{player_id: i, status_id: 2}])
    PlayerStatus.create([{player_id: i, status_id: 3}]) 
end

def backup_injured(i)
    PlayerStatus.create([{player_id: i, status_id: 2}])
    PlayerStatus.create([{player_id: i, status_id: 4}]) 
end

def team_status(n)
    (n..n+2).each{|i| starter_healthy(i)}
    (n+3..n+4).each{|i| backup_healthy(i)}
    backup_injured(n+5)
    (n+6..n+9).each{|i| starter_healthy(i)}
    (n+10..n+11).each{|i| backup_healthy(i)}
    (n+12..n+13).each{|i| backup_injured(i)}
    (n+14..n+16).each{|i| starter_healthy(i)}
    (n+17..n+18).each{|i| backup_healthy(i)}
    backup_injured(n+19)
    starter_healthy(n+20)
    backup_healthy(n+21)
end

team_status(1)
team_status(23)
team_status(45)
team_status(67)
team_status(89)
(111..130).each{|i| PlayerStatus.create([{player_id: i, status_id: 5}])}



puts "✅ Done seeding!"
