class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.text :note
      t.integer :user_id
      t.integer :brewery_id

      t.timestamps
    end
  end
end
