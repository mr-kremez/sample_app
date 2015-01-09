namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Maksim",
                 email: "maks@gmail.com",
                 password: "1q2w3e4r",
                 password_confirmation: "1q2w3e4r",
                 admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@gmail.com"
      password  = "1q2w3e4r"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end