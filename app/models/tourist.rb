class Tourist < ActiveRecord::Base
	has_many :requests
	has_many :reviews

	validates :fio,:number_passport ,:birth_date ,:adress ,:sex ,:number_telefon ,:email ,:number_interpasspor, :presence => true
end
