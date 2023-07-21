require "json"

companies_data = JSON.parse(File.read("db/data/companies.json"))
games_data = JSON.parse(File.read("db/data/games.json"))
genres_data = JSON.parse(File.read("db/data/genres.json"))
platforms_data = JSON.parse(File.read("db/data/platforms.json"))

puts "Start Seeding"

Company.destroy_all
Platform.destroy_all
Genre.destroy_all
Game.destroy_all

puts "Seeding Companies"

companies_data.each do |company_data|
  new_company = Company.new(company_data)
  puts "Company not created. Errors: #{new_company.errors.full_messages}" unless new_company.save
end

games_data.each do |game_data|
  new_game = Game.new(game_data)
  puts "Game not created. Errors: #{new_game.errors.full_messages}" unless new_game.save 
end

  