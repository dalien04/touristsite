class Reducer < ActiveRecord::Base
validates :model, :powers, :input_type, :output_type, :ratio, :ip, :volume, :presence => true
end
