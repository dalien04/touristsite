class Contract < ActiveRecord::Base
	has_one :request

	validates :number_contract, :status ,:open_date ,:pay_date ,:cost ,:dop_info ,:payment, :presence => true
  validates :request_id, :presence => true
end
