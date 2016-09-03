class Player < ActiveRecord::Base
	self.pluralize_table_names = false

	belongs_to :teams
	has_many :battings
	has_many :pitchings

	
end
