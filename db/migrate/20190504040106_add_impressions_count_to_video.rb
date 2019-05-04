class AddImpressionsCountToVideo < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :impressions_count, :int
  end
end
