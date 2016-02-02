class AddStateToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :state, :text
  end
end
