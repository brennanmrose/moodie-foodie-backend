class CreateDesserts < ActiveRecord::Migration[5.2]
  def change
    create_table :desserts do |t|
      t.string :name
      t.string :description
      t.string :user_id

      t.timestamps
    end
  end
end
