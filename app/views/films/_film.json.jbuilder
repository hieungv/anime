json.extract! film, :id, :name, :release_year, :created_at, :updated_at
json.url film_url(film, format: :json)
