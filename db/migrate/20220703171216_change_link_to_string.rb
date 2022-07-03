class ChangeLinkToString < ActiveRecord::Migration[7.0]
  def change
    change_column :wish_items, :link, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
