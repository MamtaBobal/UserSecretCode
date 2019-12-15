FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    first_name { Faker::Name.name  }
    password { '123456 '}
    password_confirmation { '123456 '}

    trait :admin do
      after(:create) do |user, evaluator|
        user.roles << create(:role)
      end
    end
  end
end
