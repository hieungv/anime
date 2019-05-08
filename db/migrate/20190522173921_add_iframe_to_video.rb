class AddIframeToVideo < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :iframe_openload, :string
  end
end
