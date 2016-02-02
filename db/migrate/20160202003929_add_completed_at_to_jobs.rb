class AddCompletedAtToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :completed_at, :DateTime
  end
end
