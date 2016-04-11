FactoryGirl.define do
  factory :user do
    sequence(:name, 0) { |n| "user_#{n}" }
    sequence(:account_name, 0) { |n| "account_#{n}" }
    sequence(:email, 0) { |n| "email_#{n}" }
  end
end
