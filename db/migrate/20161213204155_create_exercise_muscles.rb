class CreateExerciseMuscles < ActiveRecord::Migration[5.0]
  def change
    create_table :exercise_muscles do |t|
      t.references :exercise, foreign_key: true
      t.references :muscle, foreign_key: true

      t.timestamps
    end
  end
end
