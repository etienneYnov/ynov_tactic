class Sequence
  attr_accessor :id, :name, :tactic

  def initialize(id, name, tactic)
    @id = id
    @name = name
    @tactic = tactic
  end
end
