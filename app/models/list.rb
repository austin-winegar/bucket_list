class List < ApplicationRecord
  has_one :destination
  has_many :activities
end
