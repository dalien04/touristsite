class Country < ActiveRecord::Base
	has_many :cities
	has_many :restplaces

	validates :country_name, :presence => true
	
end
