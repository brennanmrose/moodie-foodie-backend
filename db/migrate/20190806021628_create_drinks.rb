class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|
      t.string :name, allow_nil: false
      t.text :description, allow_nil: false
      t.string :drink_url
      t.integer :mood_id, allow_nil: false

      t.timestamps
    end
  end
end
