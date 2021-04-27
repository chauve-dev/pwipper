class AddPweepIdToPourtags < ActiveRecord::Migration[6.1]
  def change
    add_column :pourtags, :pweep_id, :integer
  end
end
