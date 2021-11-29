class AddValueArrayToAnswers < ActiveRecord::Migration[6.1]
  def change
    add_column :answers, :value_array, :string
  end
end
