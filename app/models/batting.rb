class Batting < ActiveRecord::Base
	self.pluralize_table_names = false

	belongs_to :players

	
end
