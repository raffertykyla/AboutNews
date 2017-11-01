json.array!(@cms_roles) do |cms_role|
  json.extract! cms_role, :id, :title
  json.url cms_role_url(cms_role, format: :json)
end
