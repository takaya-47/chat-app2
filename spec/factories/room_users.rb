FactoryBot.define do
  factory :room_user do
    # 中間テーブルが作成されるとユーザーインスタンスとルームも作成される必要がある
    association :user
    association :room
  end
end