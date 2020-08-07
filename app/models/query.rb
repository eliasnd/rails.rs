class Query < ApplicationRecord
	belongs_to :user

	has_one_attached :file
	validates :file, attached: true
	
	validates :sample_field, presence: true
end
