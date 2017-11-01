class CreateCmsSchools < ActiveRecord::Migration
  def change
    create_table :cms_schools do |t|
      t.integer :chapter_id
      t.string :name
      t.string :code
      t.string :website
      t.string :representative
      t.string :rep_email

      t.timestamps null: false
    end
  end
end
