# migration to add log to the the foot_traffics table
class AddLogToFootTraffics < ActiveRecord::Migration[5.0]
  def change
    add_column :foot_traffics, :log, :string
  end
end
