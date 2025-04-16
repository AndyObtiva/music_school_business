json.extract! music_class, :id, :session_id, :instructor_id, :location_id, :music_class_series_id, :name, :description, :level, :day, :lesson_count, :duration, :price, :created_at, :updated_at
json.url music_class_url(music_class, format: :json)
