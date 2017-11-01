class CreateCmsSlideshowImages < ActiveRecord::Migration
  def change
    create_table :cms_slideshow_images do |t|
      t.attachment :image
      t.string :destination

      t.timestamps null: false
    end
  end
end
