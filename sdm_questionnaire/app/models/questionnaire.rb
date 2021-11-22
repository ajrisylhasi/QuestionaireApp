class Questionnaire < ApplicationRecord
	has_many :questions
	has_many :submissions
	accepts_nested_attributes_for :questions, allow_destroy: true, reject_if: :all_blank
end
