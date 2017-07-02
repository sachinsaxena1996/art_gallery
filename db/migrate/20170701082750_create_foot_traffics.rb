# migration to create the foot_traffics table
class CreateFootTraffics < ActiveRecord::Migration[5.0]
  def change
    create_table :foot_traffics do |t|
      t.integer :room_id
      t.float :average_visit
      t.integer :num_of_visitors
      t.timestamps
    end
  end
end
