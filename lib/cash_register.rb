class CashRegister
    attr_accessor :discount, :total, :items
    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def apply_discount 
        if discount > 0 
        self.total = (self.total * ((100.0 - discount.to_f)/100)).to_i
        return "After the discount, the total comes to $#{self.total}."
        else
            return "There is no discount to apply."
        end
    end
    
    def add_item(title,price,amount=1)
        @transaction = price * amount
        self.total += @transaction

       amount.times { items << title }
    end

    def void_last_transaction
        @total -= @transaction
    end
end
