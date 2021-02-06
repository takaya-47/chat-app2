class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_one_attached :image

  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    # true or falseを返す
    self.image.attached?
  end
end
