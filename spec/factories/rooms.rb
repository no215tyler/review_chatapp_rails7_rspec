FactoryBot.define do
  factory :room do
    name { Faker::House.room }
  end
end