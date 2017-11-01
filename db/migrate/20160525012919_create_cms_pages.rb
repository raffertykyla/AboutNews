class CreateCmsPages < ActiveRecord::Migration
  def change
    create_table :cms_pages do |t|
      t.string :title
      t.string :category
      t.string :page_type
      t.string :external_url
      t.string :internal_url
      t.attachment :document
      t.integer :page_template_id
      t.integer :cols
      
      t.timestamps null: false
    end
  end
end


