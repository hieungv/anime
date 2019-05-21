class AddChangeToVideo < ActiveRecord::Migration[5.2]
  def change
    add_reference :videos, :film, foreign_key: true
    add_column :videos, :view, :integer
    add_column :videos, :episodes, :integer
  end
end
