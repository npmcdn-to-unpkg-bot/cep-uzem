json.extract! user, :id, :tc, :password, :firstname, :lastname, :created_at, :updated_at
json.url user_url(user, format: :json)