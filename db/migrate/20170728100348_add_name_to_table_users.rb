class AddNameToTableUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
            t.string :name
            t.integer :user_id, :unique => true
            t.timestamps
          end
  end
end
