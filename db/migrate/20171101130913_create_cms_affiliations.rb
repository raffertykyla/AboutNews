class CreateCmsAffiliations < ActiveRecord::Migration[5.0]
  def change
    create_table :cms_affiliations do |t|
      t.string :url
      t.attachment :image

      t.timestamps
    end
  end
end
