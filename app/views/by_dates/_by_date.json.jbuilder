json.extract! by_date, :id, :name, :initials, :cases, :deaths, :suspects, :datetime, :created_at, :updated_at
json.url by_date_url(by_date, format: :json)
