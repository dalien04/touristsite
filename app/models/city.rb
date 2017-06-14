class City < ActiveRecord::Base
	belongs_to :country
	has_many :hotels
	has_many :restplaces

	validates :city_name, :presence => true
  validates :country_id, :presence => true
end
