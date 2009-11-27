class AddFacebookUidToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :facebook_id, :decimal, :limit => 21
  end

  def self.down
    remove_column :users, :facebook_id
  end
end
