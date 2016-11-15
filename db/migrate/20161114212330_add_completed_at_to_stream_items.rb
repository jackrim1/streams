class AddCompletedAtToStreamItems < ActiveRecord::Migration
  def change
    add_column :stream_items, :completed_at, :datetime
  end
end
