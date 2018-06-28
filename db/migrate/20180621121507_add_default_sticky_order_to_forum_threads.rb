class AddDefaultStickyOrderToForumThreads < ActiveRecord::Migration[5.2]
  def change
    change_column_default :forum_threads, :sticky_order, 100
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
