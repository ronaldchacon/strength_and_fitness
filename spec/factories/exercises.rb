FactoryGirl.define do
  factory :exercise, aliases: [:bench_press] do
    name 'Bench Press'
    equipment
  end

  factory :squat, class: Exercise do
    name 'Squat'
    equipment
  end

  factory :deadlift, class: Exercise do
    name 'Deadlift'
    equipment
  end
end
