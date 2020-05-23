class Book < ApplicationRecord
	has_and_belongs_to_many :reviewers
	has_many :notes
end
