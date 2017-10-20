class CreateCmsAnnouncements < ActiveRecord::Migration[5.0]
  def change
    create_table :cms_announcements do |t|
      t.string :title
      t.string :target_audience
      t.text :description

      t.timestamps
    end
  end
end
