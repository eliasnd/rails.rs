class Query < ApplicationRecord
	has_one_attached :file
	validates :sample_field, presence: true
end
