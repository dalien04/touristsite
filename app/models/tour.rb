class Tour < ActiveRecord::Base
	belongs_to :restplace
	belongs_to :request

	validates :adult,:children,:start_date,:end_date,:cost, :presence => true
  validates :restplace_id, :presence => true
end
