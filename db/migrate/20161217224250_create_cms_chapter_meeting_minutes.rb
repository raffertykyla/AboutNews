class CreateCmsChapterMeetingMinutes < ActiveRecord::Migration
  def change
    create_table :cms_chapter_meeting_minutes do |t|
      t.string :title
      t.date :meeting_date
      t.attachment :document
      t.integer :chapter_id

      t.timestamps null: false
    end
  end
end
