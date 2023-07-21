json.extract! game, :id, :name, :summary, :release_date, :category, :rating, :cover, :created_at, :updated_at
json.url game_url(game, format: :json)
