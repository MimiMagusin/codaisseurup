FactoryGirl.define do
  factory :event do
    name             { Faker::Lorem.sentence(1) }
    description      { Faker::Lorem.sentence(40) }
    location         { Faker::Adress.city}
    price            { Faker::Commerce.price }
    capacity          15
    includes_food     true
    includes_drinks   true

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end

  end
end
