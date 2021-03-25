class CreatePweeps < ActiveRecord::Migration[6.1]
  def change
    create_table :pweeps do |t|
      t.text :body

      t.timestamps
    end
  end
end
