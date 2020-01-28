class Message < ApplicationRecord
  belongs_to :user
  validates :body, presence: :true
  scope :current_display, -> { order(:created_at).last(10) }
end
