class CreateUserRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_roles do |t|
      t.integer :user_id, index: true
      t.integer :role_id, index: true

      t.timestamps
    end

    add_index :user_roles, [:user_id, :role_id], unique: true
  end
end
