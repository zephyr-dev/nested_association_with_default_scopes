class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :parent_id
      t.integer :topic_id

      t.timestamps
    end
  end
end
