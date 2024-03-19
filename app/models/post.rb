class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { maximum: 256}
  validates :body, presence: true, length: { maximum: 512 }
end
