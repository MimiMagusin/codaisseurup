class Event < ApplicationRecord
    belongs_to :user
    has_many :photos
    has_and_belongs_to_many :categories

    validates :name, presence: true, length: { maximum: 50 }
    validates :description, presence:true, length: { maximum: 500 }

    MAX_PRICE_BARGAIN = 30

    def bargain?
      price < MAX_PRICE_BARGAIN
    end

    def self.order_by_price
      order :price
    end

end
