class Sequence < ApplicationRecord

  belongs_to :tactic
  has_many :positions

  after_create :create_first_position
  after_create :create_second_position
  after_create :create_third_position
  after_create :create_fourth_position
  after_create :create_fifth_position
  


  private

  def create_first_position
    positions.create name: "Position 01" 
  end

  private

  def create_second_position
    positions.create name: "Position 02"
  end

  private

  def create_third_position
    positions.create name: "Position 03"
  end

  private

  def create_fourth_position
    positions.create name: "Position 04"
  end

  private

  def create_fifth_position
    positions.create name: "Position 05"
  end
end
