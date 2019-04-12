class AddChangeToVideo < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :film_id, :integer
    add_column :videos, :view, :integer
    add_column :videos, :episodes, :integer
  end
end
