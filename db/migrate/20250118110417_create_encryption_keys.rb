class CreateEncryptionKeys < ActiveRecord::Migration[7.1]
  def change
    create_table :encryption_keys do |t|
      t.references :user, null: false, foreign_key: true
      t.binary :encrypted_key, null: false

      t.timestamps
    end
  end
end
