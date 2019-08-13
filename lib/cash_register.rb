# class CashRegister
#   attr_accessor :total, :discount, :quantity, :price, :last_transaction

#   def initialize(discount = 0)
#     @total = 0
#     @discount = discount
#     @price = price
#     @quantity = quantity
#     @items = []
#     @transactions = []
#   end

#   def add_item(title, price, quantity = 1)
#     @total += price * quantity
#     @transactions << price
#     i = quantity
#     until i == 0 do
#       @items << title
#       i -= 1
#     end
#     self.last_transaction = amount * quantity
#   end

#   def apply_discount
#     if @discount == 0
#       "There is no discount to apply."
#     else
#       self.total -= (0.01 * @discount * @total).to_i
#       "After the discount, the total comes to $#{self.total}."
#     end
#   end

#   def items
#     @items
#   end
  
#   def void_last_transaction
#     self.total = self.total - self.last_transaction
#   end
  
# end


class CashRegister

  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << title
    end
    self.last_transaction = amount * quantity
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end