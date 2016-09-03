class Team < ActiveRecord::Base
	self.pluralize_table_names = false

	has_many :players

end
