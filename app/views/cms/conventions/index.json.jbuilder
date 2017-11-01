json.array!(@cms_conventions) do |cms_convention|
  json.extract! cms_convention, :id, :year, :theme, :image, :what, :when, :where, :address, :city, :state, :zip_code, :phone, :fax, :email
  json.url cms_convention_url(cms_convention, format: :json)
end
