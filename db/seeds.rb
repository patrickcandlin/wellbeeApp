# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Recipe.destroy_all
Exercise.destroy_all
Quote.destroy_all
User.destroy_all

# GratitudeJournal.destroy_all

# joan = User.create({first_name: "Joan", last_name: "Doe", birthdate: "4/21/1985", email: "joan.doe@gmail.com"})

# GratitudeJournal.create([
#     {title: "Firts_entry", content: "blah", user_id: bob.id},
#     {title: "second_entry", content: "blah", user_id: joan.id},
# ])

# TodoList.create([
#     {task_name: "Firts_task", task_content: "clean", due_date: 3/3/2010, user: bob},
#     {task_name: "Second_task", task_content: "wash", due_date: 3/3/2010, user: joan}
# ])


bob = User.create({first_name: "Bob", last_name: "Smith", birthdate: "7/7/1987", email: "bob.smith@gmail.com"})



salmon = Recipe.create!(
    {recipe_title: "Oven-Baked Salmon", recipe_content: "Preheat the oven to 450 degrees F. Season salmon with salt and pepper. Place salmon, skin side down, on a non-stick baking sheet or in a non-stick pan with an oven-proof handle. Bake until salmon is cooked through, about 12 to 15 minutes. Serve with the Toasted Almond Parsley Salad and squash, if desired.
Toasted Almond Parsley Salad: Mince the shallot and add to a small bowl. Pour the vinegar over the shallots and add a pinch of salt. Let sit for 30 minutes.
Roughly chop the capers, parsley and almonds and add to the shallots. Add the olive oil, tasting as you go. Mix again and adjust the seasonings.", user_id: 1})

exercise1 = Exercise.create(
    {exercise_title: "Plank", exercise_content: "Get into a prone position on lie floor, supporting your weight on your toes and your forearms. Your arms are bent and directly below lie shoulder. Keep your body sliaight at all times, and hold liis position as long as possible. To increase difficulty, an arm or leg can be raised.", user_id: 1})


quote1 = Quote.create({quote_content: "When one door of happiness closes, another opens; but often we look so long at the closed door that we do not see the one which has been opened for us.", quote_author: "Helen Keller", user_id: 1})
quote2 = Quote.create({quote_content: "Twenty years from now you will be more disappointed by the things that you didn’t do than by the ones you did do.", quote_author: "Mark Twain", user_id: 1})
quote3 = Quote.create({quote_content: "Those who dare to fail miserably can achieve greatly.", quote_author: "John F. Kennedy", user_id: 1})
quote4 = Quote.create({quote_content: "Challenges are what make life interesting and overcoming them is what makes life meaningful", quote_author: "Joshua J. Marine", user_id: 1})
quote5 = Quote.create({quote_content: "If you want to live a happy life, tie it to a goal, not to people or things.", quote_author: "Albert Einstein", user_id: 1})
quote6 = Quote.create({quote_content: "You miss 100 percent of the shots you never take.", quote_author: "Wayne Gretzky", user_id: 1})
quote6 = Quote.create({quote_content: "You must be the change you wish to see in the world.", quote_author: "Gandhi", user_id: 1})
quote7 = Quote.create({quote_content: "Creativity is just connecting things. When you ask creative people how they did something, they feel a little guilty because they didn’t really do it, the just saw something. It seemed obvious to them after a while.", quote_author: "Steve Jobs", user_id: 1})
quote8 = Quote.create({quote_content: "Act as if what you do makes a difference. It does.", quote_author: "William James", user_id: 1})
quote9 = Quote.create({quote_content: "Never bend your head. Always hold it high. Look the world straight in the eye.", quote_author: "Helen Keller", user_id: 1})
quote10 = Quote.create({quote_content: "Believe you can and you're halfway there.", quote_author: "Theodore Roosevelt", user_id: 1})

