class Hotel < ActiveRecord::Base
	belongs_to :city
	has_one :restplace

	validates :stars,:hotel_name,:rooms,:food,:internet,:parking,:sport,:entertainment,:beach,:service, :presence => true
  validates :city_id, :presence => true
end
