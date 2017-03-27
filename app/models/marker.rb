class Marker < ApplicationRecord

  belongs_to :sequence

  validates :name, presence: true

end
