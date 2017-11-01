json.array!(@cms_page_sections) do |cms_page_section|
  json.extract! cms_page_section, :id, :photo, :body, :position, :alignment
  json.url cms_page_section_url(cms_page_section, format: :json)
end
