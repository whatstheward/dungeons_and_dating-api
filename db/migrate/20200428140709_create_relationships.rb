class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.integer :interest_id
      t.integer :suitor_id
    end
  end
end
