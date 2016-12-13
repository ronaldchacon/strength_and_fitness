bb = Equipment.create!(name: 'Barbell')

bp = Exercise.create!(name: 'Bench Press', equipment: bb)
s = Exercise.create!(name: 'Squat', equipment: bb)
dl = Exercise.create!(name: 'Deadlift', equipment: bb)

hs = Muscle.create!(name: 'Hamstrings')
q = Muscle.create!(name: 'Quadriceps')
c = Muscle.create!(name: 'Chest')

et = ExerciseType.create!(name: 'Strength')

bp.exercise_exercise_types.create!(exercise_type: et)
s.exercise_exercise_types.create!(exercise_type: et)
dl.exercise_exercise_types.create!(exercise_type: et)

bp.exercise_muscles.create!(muscle: c)
s.exercise_muscles.create!(muscle: q)
dl.exercise_muscles.create!(muscle: hs)
