class CreateCmsAwards < ActiveRecord::Migration[5.0]
  def change
    create_table :cms_awards do |t|

      t.string :title
      t.text :description
      t.attachment :document
      t.timestamps
    end
  end
end
