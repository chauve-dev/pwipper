class CreateUtilisateurs < ActiveRecord::Migration[6.1]
  def change
    create_table :utilisateurs do |t|
      t.string :nickname
      t.string :username
      t.string :email
      t.string :password
      t.string :bio

      t.timestamps
    end
  end
end
