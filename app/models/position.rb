class Position

	attr_accessor :id, :name, :x1, :y1, :x2, :y2

	def initialize(id, name, x1, y1, x2, y2)
		@id = id
		@name = name
		@x1 = x1
		@y1 = y1
		@x2 = x2
		@y2 = y2
	end

end