FactoryBot.define do
  factory :message do
    content {Faker::Lorem.sentence}
    # メッセージが作成されるとユーザーインスタンスとルームも作成される必要がある
    association :user
    association :room

    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end