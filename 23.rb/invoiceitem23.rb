class InvoiceItem
  attr_accessor :product_name, :sales_price, :quantity, :tax_percentage


  def invoice_total
    user_total = sales_price * tax_percentage * quantity
    user_total.select {|quantity| quantity =~ 0}
  end

  def invoice_sum
    puts "The Invoice Items quantity is: #{quantity}"
    puts "The Invoice Amount Spent is: #{user_total}"
  end
  
end
