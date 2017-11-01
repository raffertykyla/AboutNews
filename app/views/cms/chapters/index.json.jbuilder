json.array!(@cms_chapters) do |cms_chapter|
  json.extract! cms_chapter, :id, :name, :code, :image, :overview, :president, :president_school, :president_email, :vice_pres, :vice_pres_school, :vice_pres_email, :treasurer, :treasurer_school, :treasurer_email, :secretary, :secretary_school, :secretary
  json.url cms_chapter_url(cms_chapter, format: :json)
end
