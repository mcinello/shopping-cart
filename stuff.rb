require_relative 'something'

#reps the shopping cart

class Stuff

  @@shopping_cart = []

#removes products from the cart
  def self.remove_item(produce)
    @@shopping_cart.each do |product|
      if produce == product
        @@shopping_cart.delete(product)
      end
    end
  end

#add's products to the cart
  def self.add_item(produce)
    @@shopping_cart << produce
  end

#total cost of products before tax
  def self.total_before_tax
    @@total_before_tax = 0.0
    @@shopping_cart.each do |product|
      @@total_before_tax += product.base_price
    end
    return @@total_before_tax
  end

#total cost of products after tax
  def self.total_after_tax
    @@total_after_tax = 0.0
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

bananas = Something.new('bananas', 5.0)
apples = Something.new('apples', 10.0)
chicken = Something.new('chicken', 15.0)

puts bananas.total_price
puts apples.total_price
puts chicken.total_price

Stuff.add_item(bananas)
Stuff.add_item(apples)
Stuff.add_item(chicken)

puts Stuff.shopping_cart.inspect

puts Stuff.total_before_tax.inspect
puts Stuff.total_after_tax.inspect

Stuff.remove_item(bananas)
puts Stuff.shopping_cart.inspect

puts Stuff.total_before_tax.inspect
puts Stuff.total_after_tax.inspect
