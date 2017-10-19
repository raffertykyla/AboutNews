class CreateCmsPageSections < ActiveRecord::Migration
  def change
    create_table :cms_page_sections do |t|
	  t.integer :page_id
      t.attachment :photo
      t.text :body
      t.integer :position
      t.string :alignment

      t.timestamps null: false
    end
  end
end
