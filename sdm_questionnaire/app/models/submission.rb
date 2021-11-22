class Submission < ApplicationRecord
  belongs_to :questionnaire
  has_many :answers
  accepts_nested_attributes_for :answers, reject_if: :all_blank
end
