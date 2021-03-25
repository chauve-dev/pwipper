class CreatePourtags < ActiveRecord::Migration[6.1]
  def change
    create_table :pourtags do |t|
      t.string :label

      t.timestamps
    end
  end
end
