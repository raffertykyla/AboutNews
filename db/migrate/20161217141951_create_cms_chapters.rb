class CreateCmsChapters < ActiveRecord::Migration
  def change
    create_table :cms_chapters do |t|
      t.string :name
      t.string :code
      t.attachment :image
      t.text :overview
      t.string :president
      t.string :president_school
      t.string :president_email
      t.string :vice_pres
      t.string :vice_pres_school
      t.string :vice_pres_email
      t.string :treasurer
      t.string :treasurer_school
      t.string :treasurer_email
      t.string :secretary
      t.string :secretary_school
      t.string :secretary_email

      t.timestamps null: false
    end
  end
end
