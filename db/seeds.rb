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
Food.create(name: 'Baked Halibut with Chimichurri', description: 'Though you might normally associate chimichurri with grilled steaks, lamb chops and other robust cuts of meat, this garlicky South American herb sauce pairs wonderfully with mild halibut and other lean white fish. Rubbed over the fillets before baking, the flavor of the chimichurri stays fresh and bright, infusing the delicate fish with a pop of green color and taste that says SPRING! It’s another simple yet impressive fish recipe to add to your repertoire.', recipe_url: 'https://www.thekitchn.com/recipe-baked-chimichurri-halibut-recipes-from-the-kitchn-188598', image_url: 'https://cdn.apartmenttherapy.info/image/fetch/f_auto,q_auto:eco,c_fit,w_1460/https%3A%2F%2Fstorage.googleapis.com%2Fgen-atmedia%2F3%2F2013%2F04%2F776b41009266678a4ce808fa766dd2aa11224e9f.jpeg', mood_id: 1)
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