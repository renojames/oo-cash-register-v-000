

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, qty = 0)

    loop do
      counter = 0
      if counter <= qty
        @items << title
        counter += 1
      else
        break
      end
    end

    if qty > 0
      @total = @total + (price*qty)
    else
      @total = @total + price
    end
  end

  def apply_discount
    if @discount > 0
      @total = @total - (@total.to_f*(@discount.to_f/100))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

end
