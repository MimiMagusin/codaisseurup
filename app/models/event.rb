class Event < ApplicationRecord
    belongs_to :user

    validates :name, presence: true
    validates :description, presence:true, length: { maximum: 500 }
    validates :start_at, presence:true
    validates :end_at, presence:true

    validate :end_at_after_start_at?

    change_column_default(:events, :price, 0)
    change_column_default(:events, :includes_food, false)
    change_column_default(:events, :includes_drinks, false)
    change_column_default(:events, :active, true)


    private

    def end_at_after_start_at?
      if end_at < start_at
        errors.add :end_at, "must be after start date"
      end
    end
end
