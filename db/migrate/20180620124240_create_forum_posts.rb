class CreateForumPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :forum_posts do |t|
      t.text :content
      t.integer :forum_thread_id
      t.integer :user_id

      t.timestamps
    end
  end
end
