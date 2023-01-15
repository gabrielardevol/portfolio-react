# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
#   ruby app.rb

require_relative "router"
mcsv = "data/meals.csv"
ccsv = "data/customers.csv"
ccsv = "data/employees.csv"

mr = MealRepository.new(mcsv)
cr = CustomerRepository.new(ccsv)
er = EmployeeRepository.new(ecsv)
mc = MealController.new(mr)
cc = CustomerController.new(cr)
sc = SessionsController.new(er)
router = Router.new(mc, cc)
router.run
