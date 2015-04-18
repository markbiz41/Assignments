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
    total = 0.00

    @items.each do |item|
      item_cost = item.sales_price * item.quantity
      total = total + item_cost
    end

    return total
    #user_total.select {|quantity| quantity =~ 0}
  end

  def tax_total
    tax = 0.00

    @items.each do |item|
      item_tax = item.sales_price * item.quantity * item.tax_percentage
      tax = tax + item_tax
    end

    return tax
  end

  def total
    self.sub_total + self.tax_total
  end

  def check_items
    @items.reject! {|item| item.quantity == 0}
  end


  def print
    self.check_items
    @items.each do |invoice_item|
      puts "The product name is: #{invoice_item.product_name}"
      puts "The sales price is: #{invoice_item.sales_price}"
      puts "The quantity amount is: #{invoice_item.quantity}"
      puts "The tax percentage is: #{invoice_item.tax_percentage}"
    end

    puts "Your Purchase Sub-Total is: %.2f" % self.sub_total # Prints 20.47 (and no more)

    puts "Tax: %.2f" % self.tax_total

    puts "Your Grand Total is: %.2f" % self.total
  end

end
