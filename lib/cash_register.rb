require 'pry'
class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction 

    def initialize(discount=0)
        @total = total
        @total = 0
        @discount = discount
        @items = []
        
        
    end

    def add_item(title=nil, price=0, quantity=1)
        
        if quantity >= 1
            @items.fill(title, @items.size, quantity)
           
        else 
            @items << title
            
        end
        @total += price * quantity
        @last_transaction = price * quantity
        #binding.pry
    end 

    def apply_discount
        if @discount == 0 
            
            p "There is no discount to apply."
        else 
            #@total = self.add_item 
            #binding.pry
            new_total = @total * (100-@discount)/100
            @total = new_total
            p "After the discount, the total comes to $#{new_total}."
            
        end
    end 

    
    def void_last_transaction
    
       @total -= @last_transaction
        
        

        #binding.pry
    end 
end 

cart = CashRegister.new(20)
cart.add_item("apple", 100, 1)
cart.void_last_transaction
