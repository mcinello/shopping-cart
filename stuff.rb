require 'pry'

require_relative 'something'

#reps the shopping cart

class Stuff

  @@shopping_cart = []
  @@total_before_tax = 0.0
  @@total_after_tax = 0.0

#removes products from the cart
  def self.remove_item
    @@shopping_cart.delete_if do |product|
      if self == product
        @@shopping_cart.delete(self)
      end
    end
  end

#add's products to the cart
  def self.add_item(produce)
    @@shopping_cart << produce
  end

#total cost of products before tax
  def total_before_tax
    @@shopping_cart.each do |product|
      @@total_before_tax += product.base_price
    end
    return @@total_before_tax
  end

#total cost of products after tax
  def total_after_tax
    @@shopping_cart.each do |product|
      @@total_after_tax += product.total_price
    end
    return @@total_after_tax
  end

  #READERS

  def self.shopping_cart
    @@shopping_cart
  end

end

puts Stuff.shopping_cart.inspect

Stuff.add_item(bananas)

puts Stuff.shopping_cart.inspect
