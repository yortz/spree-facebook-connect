class AddFacebookUidToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :facebook_uid, :integer, :limit => 8
  end

  def self.down
    remove_column :users, :facebook_uid
  end
end
