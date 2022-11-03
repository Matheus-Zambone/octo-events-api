class Issue < ApplicationRecord
  validates :payload, :number, presence: true
end
