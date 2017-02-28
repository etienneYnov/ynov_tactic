class Position < ApplicationRecord
	Belongs_to :Sequence
	Belongs_to :Marker
end
