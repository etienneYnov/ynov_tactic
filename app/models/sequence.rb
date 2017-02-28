class Sequence < ApplicationRecord
  Belongs_to :Tactic
  Has_many :Position
end
