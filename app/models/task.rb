class Task < ApplicationRecord
  belongs_to :project

  validates :title, presence: true

  PRIORITIES = [
      ['Later', 1],
      ['Next', 2],
      ['Now', 3],
  ]

  def complete!
    self.status = true
    save
  end
end