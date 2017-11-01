class CreateCmsAttachments < ActiveRecord::Migration
  def change
    create_table :cms_attachments do |t|
      t.string :title
      t.attachment :document

      t.timestamps null: false
    end
  end
end
