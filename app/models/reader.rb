class Reader < ActiveRecord::Base
    has_many :subscriptions
    has_many :magazines, through: :subscriptions

    def subscribe(magazine, price)
        Subscription.create(price: price, magazine_id: magazine.id, reader_id: self.id)
        # binding.pry
    end

    def total_subscription_price
        binding.pry
        self.subscriptions.sum(:price)
    end

end