class AddSlugToCmsPages < ActiveRecord::Migration

  def change
	  add_column :cms_pages, :slug, :string, :unique => true
  end

end
