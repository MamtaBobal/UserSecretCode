class CreateSecretCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :secret_codes do |t|
      t.string :code
      t.integer :user_id, index: true

      t.timestamps
    end

    add_index :secret_codes, :code, unique: true
  end
end
