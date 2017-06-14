class Restplace < ActiveRecord::Base
	has_one :hotel
	belongs_to :country
	belongs_to :city
	has_many :tours

	validates :name, :presence => true
	validates :country_id, :presence => true
	validates :city_id, :presence => true
	validates :hotel_id, :presence => true
end
