class CreateProfiles < ActiveRecord::Migration[5.1]
=begin def change
    create_table :profiles do |t|
      t.string :name
      t.integer :user_id
      t.string :avatar_file_name
      t.string :avatar_content_type
      t.integer :avatar_file_size
      t.datetime :avatar_updated_at

      t.timestamps
    end
  end
=end
end