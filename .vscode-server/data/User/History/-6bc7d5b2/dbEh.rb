# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
#   ruby app.rb
require_relative "./app/models/meal"
require_relative "./app/repositories/meal_repository.rb"
require_relative "router"
csv = "data/meals.csv"
mc = MealController.new(csv)
router = Router.new(mc)
router.run
