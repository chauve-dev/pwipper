class AddUserIdToRelation < ActiveRecord::Migration[6.1]
  def change
    add_column :relations, :utilisateur_id, :integer
  end
end
