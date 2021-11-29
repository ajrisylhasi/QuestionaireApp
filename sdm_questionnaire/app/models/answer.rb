class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :submission
  validates  :value, presence: true


  before_save :fix_value

  def fix_value
    if self.value.start_with? ", "
      self.value.slice!(0, 2)
    end
  end

end
