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

  invoice_item.product_name = user_product
  invoice_item.sales_price = user_price
  invoice_item.quantity = user_quantity
  invoice_item.tax_percentage = user_tax
  invoice.items << invoice_item


  # assign user input to invoice_item attributes:


  break if user_shopping == "no"
end

invoice.print
