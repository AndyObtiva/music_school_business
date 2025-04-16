# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

location_lincoln_park = Location.find_or_create_by!(
  name: 'Lincoln Park',
  phone: '312-838-8272',
  address: '238 Lincoln Ave, Chicago, IL, 60627'
)

session_spring_2025 = Session.find_or_create_by!(
  year: 2025,
  season: 'Spring',
  start_date: Date.new(2025, 3, 1),
)

instructor_joel_epstein = Instructor.find_or_create_by!(
  full_name: 'Joel Epstein',
  bio: 'Joel has a percussion degree from the Berklee School of Music',
)

music_class_drum_kits = 3.times.map do |n|
  level = n + 1
  MusicClass.find_or_create_by!(
    name: 'Drum Kit',
    description: 'How to play on a full-size drum kit!',
    level: level,
    day: 'Monday',
    lesson_count: 16,
    duration: 90,
    capacity: 5,
    price: 200,
    location: location_lincoln_park,
    instructor: instructor_joel_epstein,
    session: session_spring_2025,
  )
end

music_class_drum_kits_private = 3.times.map do |n|
  level = n + 1
  MusicClass.find_or_create_by!(
    name: 'Drum Kit (Private)',
    description: 'How to play on a full-size drum kit (Private Lessons)!',
    level: level,
    day: 'Monday',
    lesson_count: 16,
    duration: 90,
    capacity: 1,
    price: 400,
    location: location_lincoln_park,
    instructor: instructor_joel_epstein,
    session: session_spring_2025,
  )
end
