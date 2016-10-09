json.array!(@requests) do |post|
  json.extract! post, :id, :email, :type_request, :body, :time_request, :price, :phone_user, :status, :user_id
  json.url post_url(post, format: :json)
end