class CreateExerciseExerciseTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :exercise_exercise_types do |t|
      t.references :exercise, foreign_key: true
      t.references :exercise_type, foreign_key: true

      t.timestamps
    end
  end
end
