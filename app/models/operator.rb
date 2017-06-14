class Operator < ActiveRecord::Base
	has_many :requests

	validates :fio,:number_passport ,:birth_date ,:adress ,:sex ,:number_telefon ,:email , :presence => true
end
