class ChangeSolutionToSolutions < ActiveRecord::Migration[6.1]
  def change
    rename_column :questions, :possible_solution, :possible_solutions
  end
end
