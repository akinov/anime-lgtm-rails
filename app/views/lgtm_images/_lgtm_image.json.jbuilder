json.extract! lgtm_image, :id, :url, :created_at, :updated_at
json.url lgtm_image_url(lgtm_image, format: :json)
