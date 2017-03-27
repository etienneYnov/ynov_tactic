class Position < ApplicationRecord
	belongs_to :sequence
	belongs_to :marker

	after_create :create_marker

	  private

	  def create_marker
	    markers.create name: "Marker"
	  end
end
