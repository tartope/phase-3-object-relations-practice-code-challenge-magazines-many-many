class Magazine < ActiveRecord::Base
    has_many :subscriptions
    has_many :readers, through: :subscriptions

    # def self.most_popular
    #     subscription_array = Magazine.all.map{|magazine| magazine.subscriptions}
    #     most_subscriptions_array = subscription_array.max_by{|array| array.length}
    #     Magazine.find_by subscriptions: most_subscriptions_array
    # end

end