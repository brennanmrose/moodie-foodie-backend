Mood.create(name: 'Cheerful')
Mood.create(name: 'Reflective')
Mood.create(name: 'Gloomy')
Mood.create(name: 'Humorous')
Mood.create(name: 'Melancholy')
Mood.create(name: 'Idyllic')
Mood.create(name: 'Whimsical')
Mood.create(name: 'Romantic')
Mood.create(name: 'Mysterious')
Mood.create(name: 'Ominous')
Mood.create(name: 'Calm')
Mood.create(name: 'Lighthearted')
Mood.create(name: 'Hopeful')
Mood.create(name: 'Angry')
Mood.create(name: 'Fearful')
Mood.create(name: 'Tense')
Mood.create(name: 'Lonely')
Food.create(name: 'Hazelnut-Crusted Halibut with Roasted Asparagus', description: 'Fish is a great choice for quick dinners—most fillets cook to perfection in less than 10 minutes. You can use pecans, walnuts, or pine nuts in place of hazelnuts. To streamline prep and add a side, roast the asparagus together with Roasted Red Potatoes.', mood_id: 1)
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