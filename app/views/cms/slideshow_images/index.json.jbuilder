json.array!(@cms_slideshow_images) do |cms_slideshow_image|
  json.extract! cms_slideshow_image, :id, :image, :destination
  json.url cms_slideshow_image_url(cms_slideshow_image, format: :json)
end
