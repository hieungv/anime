class AddDescriptionToFilm < ActiveRecord::Migration[5.2]
  def change
    add_column :films, :description, :text
  end
end
