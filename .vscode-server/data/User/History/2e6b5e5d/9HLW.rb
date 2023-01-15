class MealController
  def initialize(repository)
    @repository = repository
  end

  def add
    #ask view for name
    #ask view for price
    #store in a hash
    #send hash to repository to create Meal
  end

  def list
    #ask repo for @meals
    #send @meals to view to display properly
  end
end
