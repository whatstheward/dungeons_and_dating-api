class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.belongs_to :user
      t.string :character_class
      t.string :race
      t.string :bio
      t.string :img

      t.timestamps
    end
  end
end
