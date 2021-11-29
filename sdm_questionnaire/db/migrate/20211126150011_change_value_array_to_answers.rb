class ChangeValueArrayToAnswers < ActiveRecord::Migration[6.1]
  def change
    change_column :answers, :value_array, :text
  end
end
