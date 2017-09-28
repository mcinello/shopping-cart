#reps the specific product
class Something

  def initialize(name, base_price)
    @name = name
    @base_price = base_price
    @tax_rate = 0.13
    @total_price = 0.0
  end

  def total_price
    @total_price = @base_price + (@base_price * @tax_rate)
    return @total_price
  end

#READERS
  def base_price
    @base_price
  end

  def tax_rate
    @tax_rate
  end

#WRITERS
  # def base_price(base_price)
  #   @base_price = base_price
  #   return @base_price
  # end
  #
  # def tax_rate(tax_rate)
  #   @tax_rate = tax_rate
  #   return @base_price
  # end

end
