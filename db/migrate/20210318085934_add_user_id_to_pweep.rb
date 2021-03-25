class AddUserIdToPweep < ActiveRecord::Migration[6.1]
  def change
    add_reference :pweeps, :utilisateur, null: false, foreign_key: true
  end
end
