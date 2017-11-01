json.array!(@cms_attachments) do |cms_attachment|
  json.extract! cms_attachment, :id, :title, :document
  json.url cms_attachment_url(cms_attachment, format: :json)
end
