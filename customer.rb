MENU = "menu.csv"

headings = []
burger_info = []

File.open(MENU, "r").each_with_index do |line, index|
    if line.length > 0 
        if index == 0
            headings << line.split(",")
        else
            burger_info << line.split(",")
        end
    end
end

class Menu_item
    def initialize(name, description, price)
        @name = name
        @description = description
        @price = price
    end

    def to_s
        "Name: #{@name}, Description: #{@description}, Price: $#{@price}"
    end
    
end

menuItems = []
burger_info.each_with_index do | array, index |
  menuItems << Menu_item.new(burger_info[index][0], burger_info[index][1], burger_info[index][2])
end


# p menuItems[1]
# p menuItems[5]

class Customer
    def initialize(name, order)
        @name = name
        @order = order
        # @payment
    end

    def name
        userName = gets.chomp
        p name
    end

    def order
        userOrder = gets.chomp.to_i
        p userOrder
    end

end

test = Customer.new(josh, userOrder)

test

puts "Lets make an order!"
print "> "

userInput = gets.chomp.to_i
    if userInput > 1 && userInput <= menuItems.length
        puts menuItems[userInput]
    else
        puts "you've selected an incorrect number"
    end









# split_again = []

# items.each_with_index do |each_item|
#     split_again << Menu_items.new(each_item[1], each_item[2], each_item[3], each_item[4])
# end


# puts split_again

# test = Menu_items.new(items[1], items[2], items[3], items[4])

# p test



