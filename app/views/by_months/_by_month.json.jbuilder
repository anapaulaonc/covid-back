json.extract! by_month, :id, :name, :initials, :cases, :deaths, :suspects, :datetime, :created_at, :updated_at
json.url by_month_url(by_month, format: :json)
