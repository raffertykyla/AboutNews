class CreateCmsConventions < ActiveRecord::Migration
  def change
    create_table :cms_conventions do |t|
      t.string :year
      t.string :theme
      t.attachment :image
      t.string :what
      t.string :when
      t.string :where
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone
      t.string :fax
      t.string :email

      t.timestamps null: false
    end
  end
end
