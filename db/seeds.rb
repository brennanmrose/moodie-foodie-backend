Mood.create(name: 'Happy')
Food.create(name: 'Happy food', description: 'happy food desc', mood_id: 1)
Drink.create(name: 'Happy drink', description: 'happy drink desc', mood_id: 1)
Dessert.create(name: 'Happy dessert', description: 'happy dessert desc', mood_id: 1)

  # create_table "desserts", force: :cascade do |t|
  #   t.string "name"
  #   t.text "description"
  #   t.integer "mood_id"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end

  # create_table "drinks", force: :cascade do |t|
  #   t.string "name"
  #   t.text "description"
  #   t.integer "mood_id"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end

  # create_table "foods", force: :cascade do |t|
  #   t.string "name"
  #   t.text "description"
  #   t.integer "mood_id"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end

  # create_table "moods", force: :cascade do |t|
  #   t.string "name"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end