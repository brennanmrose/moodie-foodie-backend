class CreateDietaryRestrictions < ActiveRecord::Migration[5.2]
  def change
    create_table :dietary_restrictions do |t|
      t.string :vegetarian
      t.string :vegan
      t.string :peanut_free
      t.string :gluten_free
      t.string :soy_free

      t.timestamps
    end
  end
end
