class Employee < ApplicationRecord
  belongs_to :dog

  validates :alias, :title, uniqueness: true
  validates :first_name, :last_name, :alias,
            :title, :office, :dog_id, presence: true
end
