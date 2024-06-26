FactoryBot.define do
  factory :vendor do
    name { Faker::Company.name.concat(" Market") }
    description { Faker::Company.industry }
    contact_name { Faker::Name.name }
    contact_phone { Faker::PhoneNumber.phone_number }
    credit_accepted { Faker::Boolean.boolean(true_ratio: 0.9) }
  end
end