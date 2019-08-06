class CreateDietaryRestrictions < ActiveRecord::Migration[5.2]
  def change
    create_table :dietary_restrictions do |t|
      t.boolean :vegetarian
      t.boolean :vegan
      t.boolean :peanut_free
      t.boolean :gluten_free
      t.boolean :soy_free
      t.integer :user_id

      t.timestamps
    end
  end
end
