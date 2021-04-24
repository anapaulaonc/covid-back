json.extract! state, :id, :name, :initials, :cases, :deaths, :suspects, :datetime, :created_at, :updated_at
json.url state_url(state, format: :json)
