

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, qty = 0)
    if qty > 0
      @total = @total + (price*qty)
    else
      @total = @total + price
    end
  end

  def apply_discount
    @total = @total - (@total.to_f*(@discount.to_f/100))
    "After the discount, the total comes to $#{@total.to_i}."
  end

end
