class CustomerView
  def ask_for(word)
    puts "whats the #{word} of this customer?"
    gets.chomp
  end

  def display_customers(customer_hash)
    puts "    ##################"
    puts "    ###  CUSTOMERS ###"
    puts "    ##################"
    customer_hash.each_with_index do |customer, index|
      puts "    #{index + 1} - #{customer.name} - #{customer.address}"
    end
    puts ""
  end
end
