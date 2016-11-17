class AddAttachmentAttachmentToContents < ActiveRecord::Migration
  def self.up
    change_table :contents do |t|
      t.attachment :attachment
    end
  end

  def self.down
    remove_attachment :contents, :attachment
  end
end
