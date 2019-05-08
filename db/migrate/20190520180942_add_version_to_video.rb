class AddVersionToVideo < ActiveRecord::Migration[5.2]
  def change
    add_reference :videos, :version, foreign_key: true
  end
end
