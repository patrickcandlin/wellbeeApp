# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# User.destroy_all
# GratitudeJournal.destroy_all

# bob = User.create({first_name: "Bob", last_name: "Smith", birthdate: 7/7/1987, email: "bob.smith@gmail.com"})
# joan = User.create({first_name: "Joan", last_name: "Doe", birthdate: 4/21/1985, email: "joan.doe@gmail.com"})

# GratitudeJournal.create([
#     {title: "Firts_entry", content: "blah", user_id: bob.id},
#     {title: "second_entry", content: "blah", user_id: joan.id},
# ])

# TodoList.create([
#     {task_name: "Firts_task", task_content: "clean", due_date: 3/3/2010, user: bob},
#     {task_name: "Second_task", task_content: "wash", due_date: 3/3/2010, user: joan}
# ])


salmon = Recipe.create!(
    {recipe_title: "Oven-Baked Salmon", recipe_content: "Preheat the oven to 450 degrees F. Season salmon with salt and pepper. Place salmon, skin side down, on a non-stick baking sheet or in a non-stick pan with an oven-proof handle. Bake until salmon is cooked through, about 12 to 15 minutes. Serve with the Toasted Almond Parsley Salad and squash, if desired.
Toasted Almond Parsley Salad: Mince the shallot and add to a small bowl. Pour the vinegar over the shallots and add a pinch of salt. Let sit for 30 minutes.
Roughly chop the capers, parsley and almonds and add to the shallots. Add the olive oil, tasting as you go. Mix again and adjust the seasonings.", user_id: 1})

exercise1 = Exercise.create(
    {exercise_title: "Plank", exercise_content: "Get into a prone position on lie floor, supporting your weight on your toes and your forearms. Your arms are bent and directly below lie shoulder. Keep your body sliaight at all times, and hold liis position as long as possible. To increase difficulty, an arm or leg can be raised.", user_id: 1})
