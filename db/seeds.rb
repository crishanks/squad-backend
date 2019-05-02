# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
  Player.create(
    team_player_id: rand(1..20),
    name: Faker::Movies::LordOfTheRings.character,
    age: rand(18...40),
    image: nil,
    username: Faker::Movies::HarryPotter.character,
    password: "password",
    height: "5'11",
    position: Faker::Movies::StarWars.specie,
    experience_level: rand(1..10),
    description: Faker::TvShows::MichaelScott.quote
  )

end


20.times do
  team_players = []
  team_players << TeamPlayer.new(player: Player.all.sample, organizer: true)
  rand(3..5).times do
    team_players << TeamPlayer.new(player: Player.all.sample, organizer: false)
  end

  Team.create(
    team_players: team_players,
    name: Faker::Movies::HarryPotter.house,
    location: Faker::Games::Pokemon.location,
    league: Faker::Games::SuperSmashBros.stage
  )
end