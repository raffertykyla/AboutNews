json.array!(@cms_schools) do |cms_school|
  json.extract! cms_school, :id, :chapter_id, :name, :code, :website, :representative, :rep_email
  json.url cms_school_url(cms_school, format: :json)
end
