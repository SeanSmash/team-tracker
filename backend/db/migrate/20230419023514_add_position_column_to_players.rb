class AddPositionColumnToPlayers < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :position, :string
  end
end
