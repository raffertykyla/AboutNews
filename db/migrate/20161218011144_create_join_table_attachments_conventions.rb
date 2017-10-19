class CreateJoinTableAttachmentsConventions < ActiveRecord::Migration
  def up
    create_join_table :attachments, :conventions do |t|
       t.index [:attachment_id, :convention_id]
       t.index [:convention_id, :attachment_id]
    end
  end
  
  def down
	drop_table :attachments_conventions  
  end
  
end
