class CreatePlayerStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :player_statuses do |t|
      t.integer :player_id
      t.integer :status_id
    end
  end
end
