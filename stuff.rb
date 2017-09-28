require './something.rb'

#reps the shopping cart

class Stuff

  @@shopping_cart = []

  @@total_before_tax = 0

  @@total_after_tax = 0


#removes products from the cart
  def self.remove_item
    @@shopping_cart.delete_if do |product|
      if self == product
        @@shopping_cart.delete(self)
      end
  end

#add's products to the cart
  def self.add_item

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


  #calculates tax

end
