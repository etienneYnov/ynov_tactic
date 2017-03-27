class Sequence < ApplicationRecord

  belongs_to :tactic
  has_many :positions

end
