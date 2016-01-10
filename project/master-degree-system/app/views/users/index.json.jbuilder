json.array!(@users) do |user|
  json.extract! user, :id, :userType_id, :nationalID, :name, :imageURL, :mobileNumber, :phoneNumber, :email, :password, :creator_id, :modifier_id
  json.url user_url(user, format: :json)
end
