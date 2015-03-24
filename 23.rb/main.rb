require_relative 'invoiceitem23'
require_relative 'invoiceclass23'

invoice = Invoice.new # Taken from Invoice class in Invoiceclass23.rb

loop do

  # create a new instance of InvoiceItem
  invoice_item = InvoiceItem.new()


    puts "Please enter the product name: "
    user_product = gets.chomp
    puts "Please enter the sales price: "
    user_price = gets.chomp.to_f
    puts "Please enter the quantity amount: "
    user_quantity = gets.chomp.to_i
    puts "Please enter the tax percentage: "
    user_tax = gets.chomp.to_f
    puts "Do you want to continue shopping? yes or no"
    user_shopping = gets.chomp

  # assign it to the invoice

  invoice.items << invoice_item
  invoice_item.product_name = user_product
  invoice_item.sales_price = user_price
  invoice_item.quantity = user_quantity
  invoice_item.tax_percentage = user_tax



  # assign user input to invoice_item attributes:


  break if user_shopping == "no"
end

invoice_total = 0
tax_total = 0

invoice.items.each do |invoice_item|
  puts "The product name is: #{invoice_item.product_name}"
  puts "The sales price is: #{invoice_item.sales_price}"
  puts "The quantity amount is: #{invoice_item.quantity}"
  puts "The tax percentage is: #{invoice_item.tax_percentage}"

  item_cost = invoice_item.sales_price * invoice_item.quantity

  invoice_total += item_cost
  tax_total += item_cost * invoice_item.tax_percentage
end



puts "Your Purchase Sub-Total is: %.2f" % invoice_total # Prints 20.47 (and no more)

puts "Tax: %.2f" % tax_total

grand_total = invoice_total + tax_total
puts "Your Grand Total is: %.2f" % grand_total
