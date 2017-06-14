class Request < ActiveRecord::Base
	has_one :tour
	belongs_to :tourist
	belongs_to :contract
	has_many :operators

	validates :open_date,:close_date,:dop_info,:status, :presence => true
  #validates :tourist_id, :presence => true
  #validates :operator_id, :presence => true
  #validates :tour_id, :presence => true
end
