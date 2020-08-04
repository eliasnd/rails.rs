class Query < ApplicationRecord
	validates :file, presence: true
	validates :sample_field, presence: true
end
