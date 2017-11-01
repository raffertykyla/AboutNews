json.extract! cms_announcement, :id, :title, :target_audience, :description, :created_at, :updated_at
json.url cms_announcement_url(cms_announcement, format: :json)
