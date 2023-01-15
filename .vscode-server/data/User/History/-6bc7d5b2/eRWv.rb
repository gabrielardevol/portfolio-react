# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
#   ruby app.rb

require_relative "router"
csv = "data/meals.csv"
mr = MealRepository.new(csv)
cr = CustomerRepository.new(csv)
mc = MealController.new(mr)
cc = CustomerController.new(mr)
router = Router.new(mc, cc)
router.run
