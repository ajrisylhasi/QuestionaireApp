class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.references :questionnaire, null: false, foreign_key: true
      t.string :text
      t.string :type
      t.string :possible_solution

      t.timestamps
    end
  end
end
