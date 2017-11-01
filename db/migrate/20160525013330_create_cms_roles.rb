class CreateCmsRoles < ActiveRecord::Migration
  def change
    create_table :cms_roles do |t|
      t.string :title

      t.timestamps null: false
    end
    Cms::Role.create(:title => "Administrator")
    Cms::Role.create(:title => "Site Manager")
    Cms::Role.create(:title => "Authenticated")
    Cms::Role.create(:title => "Pending")
  end
end
