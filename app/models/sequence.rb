class Sequence < ApplicationRecord

  belongs_to :tactic
  has_many :markers

  after_create :create_first_markers

  private

  def create_first_markers
    5.times do |i|
      markers.create! name: "Marqueur 0#{i + 1}"
    end
  end

end
