class ChangeCharactersImgColumnToFk < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :image_id, :integer
    remove_column :characters, :img, :string
  end
end
