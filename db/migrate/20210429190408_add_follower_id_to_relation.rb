class AddFollowerIdToRelation < ActiveRecord::Migration[6.1]
  def change
    add_column :relations, :follower_id, :integer
  end
end
