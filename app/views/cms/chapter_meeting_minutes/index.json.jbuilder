json.array!(@cms_chapter_meeting_minutes) do |cms_chapter_meeting_minute|
	json.extract! cms_chapter_meeting_minute, :id, :title, :meeting_date, :document, :chapter_id
	json.url cms_chapter_meeting_minute_url(cms_chapter_meeting_minute, format: :json)
end