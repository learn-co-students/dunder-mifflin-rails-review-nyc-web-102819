class Employee < ApplicationRecord
    belongs_to :dog
    validates :alias, :title, uniqueness: true, presence: true
    validates :first_name, :last_name, :office, presence: true
end
