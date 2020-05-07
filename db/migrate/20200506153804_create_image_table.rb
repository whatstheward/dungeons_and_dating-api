class CreateImageTable < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :url
    end
  end
end
