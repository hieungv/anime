User.create!(email: "hieu@gmail.com",
  password: "123123", password_confirmation: "123123", admin: true)
99.times do |n|
  name  = Faker::Name.name
  genre_id = rand(1..8)
  video_id = rand(1..8)
  image = rand(1..18)
  Movie.create!(name: name,
                genre_id: genre_id,
                video_id: video_id,
                image: "movie#{image}.jpg",
                description: "mieuta",)
end
