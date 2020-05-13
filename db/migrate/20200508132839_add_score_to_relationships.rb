class AddScoreToRelationships < ActiveRecord::Migration[5.2]
  def change
    add_column :relationships, :score, :integer, :null => false, :default => 0
  end
end
