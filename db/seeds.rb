
Recipe.destroy_all
User.destroy_all


admin = User.create!(
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password',
  role: User::ROLE_ADMIN
)

user = User.create!(
  email: 'user@example.com',
  password: 'password',
  password_confirmation: 'password',
  role: User::ROLE_REGULAR
)

puts "Users loaded"


recipes = [
  {
    title: "Margherita Pizza",
    cook_time: 30,
    difficulty: "Easy",
    instructions: "<p>1. Preheat the oven to 220°C.</p>
                   <p>2. Roll out the dough and spread the tomato sauce.</p>
                   <p>3. Add mozzarella cheese and fresh basil.</p>
                   <p>4. Bake for 12-15 minutes.</p>",
    user: admin
  },
  {
    title: "Spaghetti Carbonara",
    cook_time: 25,
    difficulty: "Medium",
    instructions: "<p>1. Cook the spaghetti in salted water.</p>
                   <p>2. Fry the pancetta until crispy.</p>
                   <p>3. Mix eggs and Parmesan cheese in a bowl.</p>
                   <p>4. Quickly combine spaghetti, pancetta, and egg mixture.</p>",
    user: admin
  },
  {
    title: "Tiramisu",
    cook_time: 40,
    difficulty: "Hard",
    instructions: "<p>1. Beat the egg yolks with sugar.</p>
                   <p>2. Add mascarpone cheese and mix well.</p>
                   <p>3. Dip the ladyfingers in coffee and layer alternately with the cream.</p>
                   <p>4. Refrigerate for at least 4 hours before serving.</p>",
    user: admin
  }
]

recipes.each_with_index do |recipe, i|
  Recipe.create!(recipe)
  puts "Recipe #{i + 1} loaded"
end

puts "🎉 All seeds loaded successfully!"
