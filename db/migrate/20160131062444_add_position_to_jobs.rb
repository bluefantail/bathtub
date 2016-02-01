class AddPositionToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :position, :integer
  end
end
