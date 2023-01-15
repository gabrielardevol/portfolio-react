class VendingMachine
  # TODO: add relevant getter/setter to this class to make the scenarios work properly.
  attr_accessor :user_balance_cents, :snack_count, :snack_price_cents

  def initialize(snack_price_cents, snack_count)
    @user_balance_cents = 0
    @snack_count = snack_count
    @snack_price_cents = snack_price_cents
  end

  def insert_coin(input_cents)
    @user_balance_cents += input_cents
    # TODO: what happens to @snack_count, @user_balance_cents and @snack_price_cents
    # when the user inserts a coin?
  end

  def buy_snack
    if @user_balance_cents > 250 && @snack_count >= 1
      @snack_count -= 1
      @user_balance_cents -= 250
    else
      return "insert more coins"
    end
    # TODO: what happens to @snack_count, @user_balance_cents and @snack_price_cents
    # when the user pushes a button to buy a Snack?
  end
end
