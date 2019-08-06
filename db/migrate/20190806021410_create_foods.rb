class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :description
      t.string :user_id

      t.timestamps
    end
  end
end
