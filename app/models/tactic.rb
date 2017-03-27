class Tactic < ApplicationRecord

  has_many :sequences

  after_create :create_first_sequence

  private

  def create_first_sequence
    sequences.create name: "Séquence 01"
  end

end
