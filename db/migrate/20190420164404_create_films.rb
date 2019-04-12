class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.text :name
      t.datetime :release_year

      t.timestamps
    end
  end
end
