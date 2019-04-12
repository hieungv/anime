json.extract! film_category, :id, :film_id, :categories_id, :created_at, :updated_at
json.url film_category_url(film_category, format: :json)
