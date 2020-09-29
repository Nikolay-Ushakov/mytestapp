class Project < ApplicationRecord
  has_many :tasks, -> { order "status, priority DESC, created_at" }, dependent: :destroy

  validates :name, presence: true
end