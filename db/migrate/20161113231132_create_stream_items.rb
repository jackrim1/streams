class CreateStreamItems < ActiveRecord::Migration
  def change
    create_table :stream_items do |t|
      t.string :content
      t.references :stream_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
