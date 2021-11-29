class Question < ApplicationRecord
  belongs_to :questionnaire
  has_many :answers

  validates  :text, presence: true

  def possible_solutions_array
    if possible_solutions != ""
      array = self.possible_solutions.split('*,*')
      return array
    end
  end
end
