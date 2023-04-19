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
    {status: "unassigned"}
])



puts "✅ Done seeding!"
