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



recipe1 = Recipe.create!(
    {recipe_title: "Oven-Baked Salmon", recipe_content: "Preheat the oven to 450 degrees F. Season salmon with salt and pepper. Place salmon, skin side down, on a non-stick baking sheet or in a non-stick pan with an oven-proof handle. Bake until salmon is cooked through, about 12 to 15 minutes. Serve with the Toasted Almond Parsley Salad and squash, if desired.
Toasted Almond Parsley Salad: Mince the shallot and add to a small bowl. Pour the vinegar over the shallots and add a pinch of salt. Let sit for 30 minutes.
Roughly chop the capers, parsley and almonds and add to the shallots. Add the olive oil, tasting as you go. Mix again and adjust the seasonings.", user_id: 1})
recipe2 = Recipe.create!(
    {recipe_title: "Roasted Brussels Sprouts", recipe_content: "Preheat oven to 400 degrees F.
    Cut off the brown ends of the Brussels sprouts and pull off any yellow outer leaves. Mix them in a bowl with the olive oil, salt and pepper. Pour them on a sheet pan and roast for 35 to 40 minutes, until crisp on the outside and tender on the inside. Shake the pan from time to time to brown the sprouts evenly. Sprinkle with more kosher salt and serve immediately.", user_id: 1})
recipe3 = Recipe.create!(
    {recipe_title: "Roasted Carrots", recipe_content: "Preheat the oven to 400 degrees F. If the carrots are thick, cut them in half lengthwise; if not, leave whole. Slice the carrots diagonally in 1 1/2-inch-thick slices. (The carrots will shrink while cooking so make the slices big.) Toss them in a bowl with the olive oil, salt, and pepper. 
    Transfer to a sheet pan in 1 layer and roast in the oven for 20 minutes, until browned and tender. Toss the carrots with minced dill or parsley, season to taste, and serve.", user_id: 1})
recipe4 = Recipe.create!(
    {recipe_title: "Lentil Soup", recipe_content: "Place the olive oil into a large 6-quart Dutch oven and set over medium heat. Once hot, add the onion, carrot, celery and salt and sweat until the onions are translucent, approximately 6 to 7 minutes. Add the lentils, tomatoes, broth, coriander, cumin and grains of paradise and stir to combine. Increase the heat to high and bring just to a boil. Reduce the heat to low, cover and cook at a low simmer until the lentils are tender, approximately 35 to 40 minutes. Using a stick blender, puree to your preferred consistency. Serve immediately.", user_id: 1})
recipe5 = Recipe.create!(
    {recipe_title: "Healthy Cauliflower Rice", recipe_content: "Trim the cauliflower florets, cutting away as much stem as possible. In 3 batches, break up the florets into a food processor and pulse until the mixture resembles couscous.
    Heat the oil in a large skillet over medium-high heat. At the first wisp of smoke from the oil, add the onions, and stir to coat. Continue cooking, stirring frequently, until the onions are golden brown at the edges and have softened, about 8 minutes. Add the cauliflower, and stir to combine. Add 1 teaspoon salt, and continue to cook, stirring frequently, until the cauliflower has softened, 3 to 5 minutes. Remove from the heat.
    Spoon the cauliflower into a large serving bowl, garnish with the parsley, sprinkle with the lemon juice and season to taste with salt. Serve warm.", user_id: 1})
recipe6 = Recipe.create!(
    {recipe_title: "Garden Vegetable Soup", recipe_content: "Heat the olive oil in large, heavy-bottomed stockpot over medium-low heat. Once hot, add the leeks, garlic, and a pinch of salt and sweat until they begin to soften, approximately 7 to 8 minutes. Add the carrots, potatoes, and green beans and continue to cook for 4 to 5 more minutes, stirring occasionally.
    Add the stock, increase the heat to high, and bring to a simmer. Once simmering, add the tomatoes, corn kernels, and pepper. Reduce the heat to low, cover, and cook until the vegetables are fork tender, approximately 25 to 30 minutes. Remove from heat and add the parsley and lemon juice. Season, to taste, with kosher salt. Serve immediately.
    ", user_id: 1})
recipe7 = Recipe.create!(
    {recipe_title: "Green Beans with Lemon and Garlic", recipe_content: "Blanch green beans in a large stock pot of well salted boiling water until bright green in color and tender crisp, roughly 2 minutes. Drain and shock in a bowl of ice water to stop from cooking.
    Heat a large heavy skillet over medium heat. Add the oil and the butter. Add the garlic and red pepper flakes and saute until fragrant, about 30 seconds. Add the beans and continue to saute until coated in the butter and heated through, about 5 minutes. Add lemon zest and season with salt and pepper.", user_id: 1})
recipe8 = Recipe.create!(
    {recipe_title: "Quinoa Salad", recipe_content: "Bring the water to a boil in a large saucepan. Add the quinoa, stir once, and return to a boil. Cook uncovered, over medium heat for 12 minutes. Strain and rinse well with cold water, shaking the sieve well to remove all moisture.
    When dry, transfer the quinoa to a large bowl. Add the cucumbers, onion, tomato, parsley, mint, olive oil, vinegar, lemon juice, salt, and pepper and toss well. Spoon onto endive spears, top with avocado, and serve.", user_id: 1})
recipe9 = Recipe.create!(
    {recipe_title: "Chia Seed Pudding", recipe_content: "In a medium bowl, gently whisk the almond milk, yogurt, 2 tablespoons maple syrup, the vanilla and 1/8 teaspoon salt until just blended. Whisk in the chia seeds; let stand 30 minutes. Stir to distribute the seeds if they have settled. Cover and refrigerate overnight.
    The next day, in a medium bowl, toss the berries with the remaining 4 teaspoons maple syrup. Mix in the almonds.
    Spoon the pudding into 4 bowls or glasses; mound the berry mixture on top and serve. ", user_id: 1})
recipe10 = Recipe.create!(
    {recipe_title: "Vegetable Noodle Soup", recipe_content: "Heat the olive oil in a medium saucepan over medium heat; add all the vegetables, garlic and onion. Season with the salt, and cook until tender, about 6 minutes. Add the pasta and cook until slightly toasted and golden, about 2 minutes. Add broth, and bring to a boil over high heat. Cook, covered, until pasta is just tender, about 8 minutes.
    Stir in whatever herb suits you (or your young eater) and lemon juice. Season with pepper and additional salt, to taste. Fill thermos, pack in a lunch sack with crackers and cheese sticks and send off to school.", user_id: 1})



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

