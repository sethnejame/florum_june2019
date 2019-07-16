json.extract! profile, :id, :city, :my_plants, :favorite_flora, :latest_posts, :about_me, :profile_pic, :created_at, :updated_at
json.url profile_url(profile, format: :json)
