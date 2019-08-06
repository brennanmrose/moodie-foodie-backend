class CreateDesserts < ActiveRecord::Migration[5.2]
  def change
    create_table :desserts do |t|
      t.string :name
      t.text :description
      t.integer :mood_id

      t.timestamps
    end
  end
end
