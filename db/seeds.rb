# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
  images = ["http://hw-img.datpiff.com/mc3f2dbf/SKYWLKR_John_Stockton_Instrumentals-front-large.jpg", "http://25.media.tumblr.com/tumblr_ljsil1uX101qj12oco1_500.jpg", "https://i.pinimg.com/originals/2f/5b/00/2f5b00ab69af9deaf09fb8da4c248261.jpg", "https://i1.sndcdn.com/artworks-000428448255-hihteq-t500x500.jpg", "https://i.pinimg.com/originals/46/7f/2b/467f2bf0494d376fb12eab614ecb9f05.jpg", "https://m.media-amazon.com/images/I/91YPGXJKzpL._SS500_.jpg", "https://www.caa.com/sites/default/files/styles/square/public/2018-06/CAA-Basketball-DwyaneWade.jpg?itok=1_JudmgF", "http://www.thumpernewman.com/Dirk%20Nowitzki.jpg", "http://eastbridge-sb.com/wp-content/uploads/2019/01/James-Harden-five-500x500.jpg", "https://cdn.sportsadnet.com/uploads/2019/02/USATSI_12153436_168387294_lowres-500x500.jpg", "https://www.proballers.com/ul/news/5c4caf0bc0d0rudy-gobert.jpg"]

  positions = ["Shooting Guard", "Point Guard", "Power Forward", "Center", "Small Forward"]

  heights = ["6'11", "6'2", "5'9", "5'7", "6'4", "6'", "6'2", "5'2", "5'11"]

  Player.create(
    name: Faker::Football.player,
    age: rand(18...40),
    image: images.sample(),
    username: Faker::Movies::HarryPotter.character,
    password: "password",
    height: heights.sample(),
    position: positions.sample(),
    experience_level: rand(1..10),
    description: Faker::TvShows::MichaelScott.quote
  )

end

Player.all.each do |player|
  5.times do 
    Match.create(player_id: player.id, player_match_id: Player.all.sample().id)
  end

  30.times do
    PotentialMatch.create(player_id: player.id, player_match_id: Player.all.sample().id)
  end
end



# 20.times do
#   team_players = []
#   team_players << TeamPlayer.new(player: Player.all.sample, organizer: true)
#   rand(3..5).times do
#     team_players << TeamPlayer.new(player: Player.all.sample, organizer: false)
#   end

#   Team.create(
#     team_players: team_players,
#     name: Faker::Movies::HarryPotter.house,
#     location: Faker::Games::Pokemon.location,
#     league: Faker::Games::SuperSmashBros.stage
#   )
# end