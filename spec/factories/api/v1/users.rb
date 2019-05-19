FactoryBot.define do
  factory :api_v1_user, class: 'Api::V1::User' do
    name { "MyString" }
    email { "MyString" }
  end
end
