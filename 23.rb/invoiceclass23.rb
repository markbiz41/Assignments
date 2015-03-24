class Invoice
  attr_accessor :items

  def initialize
    @items = []
  end

  def items
    @items
  end

  def items=(new_items)
    @items = new_items
  end

  def sub_total
    @s = sales_price * quantity
  end

end

=begin
10. Show a sub-total without the tax, then a line item for the tax, then the total.
=end
