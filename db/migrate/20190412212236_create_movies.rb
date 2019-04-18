class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :genre_id
      t.string :description
      t.integer :video_id
      t.string :note
      t.string :image
      t.timestamps
    end
  end
end
