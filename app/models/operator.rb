class Operator < ActiveRecord::Base
	has_and_belongs_to_many :requests

	validates :fio,:number_passport ,:birth_date ,:adress ,:sex ,:number_telefon ,:email , :presence => true
end
