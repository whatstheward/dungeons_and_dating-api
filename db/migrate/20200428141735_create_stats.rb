class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.belongs_to :character, foreign_key: true
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma

      t.timestamps
    end
  end
end
