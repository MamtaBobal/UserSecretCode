FactoryBot.define do
  factory :secret_code do
    code { Faker::Name.unique.name }
    user_id nil
  end
end
