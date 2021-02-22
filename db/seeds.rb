require 'faker'

Review.delete_all
Client.delete_all

20.times do

  Client.create({
    name: Faker::Games::LeagueOfLegends.champion,
    subscribed: false
    })

  Client.create({
    name: Faker::Games::LeagueOfLegends.champion,
    subscribed: true
    })


  clients = Client.all
  Review.create({
    category: Faker::WorldCup.team,
    rating: Faker::Number.between(from: 1, to: 5),
    client_id: clients.shuffle.last.id
    })
end
