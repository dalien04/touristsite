class Review < ActiveRecord::Base
	belongs_to :tourist

	validates :review_text,:review_date, :presence => true
  validates :tourist_id, :presence => true
end
