class CreateStoredInfos < ActiveRecord::Migration[7.1]
  def change
    create_table :stored_infos do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :encrypted_text

      t.timestamps
    end
  end
end
